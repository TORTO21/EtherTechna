import { RECEIVE_STORY_ERRORS } from '../../actions/story_actions'
import { RECEIVE_CURRENT_USER } from '../../actions/session_actions'

const storiesErrorsReducer = (state = [], action) => {
  Object.freeze(state)
  switch (action.type) {
    case RECEIVE_STORY_ERRORS:
      return action.errors
    // case RECEIVE_CURRENT_USER:
    //   return []
    default:
      return state
  }
}

export default storiesErrorsReducer