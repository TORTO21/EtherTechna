import * as APISessionUtil from '../util/session_api_util'

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER'
export const LOGOUT_CURRENT_USER = 'REMOVE_USER'

export const signup = (user) => (dispatch) => {
  return APISessionUtil.signup(user)
    .then((currentUser) => dispatch({
      type: RECEIVE_CURRENT_USER,
      currentUser
    }))
}

export const login = (user) => (dispatch) => {
  return APISessionUtil.login(user)
    .then((currentUser) => dispatch({
      type: RECEIVE_CURRENT_USER,
      currentUser
    }))
}

export const logout = () => (dispatch) => {
  return APISessionUtil.logout()
    .then(() => dispatch({
      type: LOGOUT_CURRENT_USER
    }))
}