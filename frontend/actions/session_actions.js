import * as APISessionUtil from '../util/session_api_util'

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER'
export const LOGOUT_CURRENT_USER = 'REMOVE_USER'
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS'

const receiveCurrentUser = (currentUser) => {
  return {
    type: RECEIVE_CURRENT_USER,
    currentUser
  }
}

const logoutCurrentUser = () => {
  return {
    type: LOGOUT_CURRENT_USER,
  }
}

const receiveSessionErrors = (errors) => {
  return {
    type: RECEIVE_SESSION_ERRORS,
    errors
  }
}

export const signup = (user) => (dispatch) => {
  return APISessionUtil.signup(user)
    .then(
      (currentUser) => dispatch(receiveCurrentUser(currentUser)),
      (errors) => dispatch (receiveSessionErrors(errors.responseJSON))
    )
}

export const login = (user) => (dispatch) => {
  return APISessionUtil.login(user)
    .then(
      (currentUser) => dispatch(receiveCurrentUser(currentUser)),
      (errors) => dispatch(receiveSessionErrors(errors.responseJSON))
    )
}

export const logout = () => (dispatch) => {
  return APISessionUtil.logout()
    .then(
      () => dispatch(logoutCurrentUser()),
      (errors) => dispatch(receiveSessionErrors(errors.responseJSON))
    )
}