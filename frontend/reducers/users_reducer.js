import { RECEIVE_CURRENT_USER } from '../actions/session_actions'
import { RECEIVE_USER } from '../actions/user_actions'
import { merge } from 'lodash'

const usersReducer = (state = {}, action) => {
  Object.freeze(state)
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      let { id } = action.currentUser
      return merge({}, state, { [id]: action.currentUser })
    case RECEIVE_USER:
      id = action.user.id
      return merge({}, state, { [id]: action.user })
    default:
      return state
  }
}

export default usersReducer