import { merge } from 'lodash'

import {
  RECEIVE_STORIES,
  RECEIVE_STORY,
  REMOVE_STORY,
  CLEAR_STORIES,
} from '../actions/story_actions'

const storiesReducer = (state = {}, action) => {
  Object.freeze(state)
  switch(action.type) {
    case RECEIVE_STORIES:
      return action.stories
    case RECEIVE_STORY:
      const { id } = action.story
      const nextState = { [id]: action.story }
      return merge({}, state, nextState)
    case REMOVE_STORY:
      const newState = merge({}, state)
      delete newState.stories[action.storyId]
      return newState
    case CLEAR_STORIES:
      return {}
    default:
      return state
  }
}

export default storiesReducer