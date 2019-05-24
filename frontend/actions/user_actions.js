import * as APIUserUtil from '../util/user_util'

export const RECEIVE_USER = 'RECEIVE_USER'
export const RECEIVE_USER_ERRORS = 'RECEIVE_USER_ERRORS'

const receiveUser = (user) => {
  return {
    type: RECEIVE_USER,
    user
  }
}

const receiveUserErrors = (errors) => {
  return {
    type: RECEIVE_USER_ERRORS,
    errors
  }
}

export const fetchUser = (userId) => (dispatch) => {
  return APIUserUtil.fetchUser(userId)
    .then(
      (user) => dispatch(receiveUser(user)),
      (errors) => dispatch(receiveUserErrors(errors))
    )
}