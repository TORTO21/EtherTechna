import * as APIStoryUtil from '../util/story_api_util'

export const RECEIVE_STORIES = 'RECEIVE_STORIES'
export const RECEIVE_STORY = 'RECEIVE_STORY'
export const RECEIVE_STORY_ERRORS = 'RECEIVE_STORY_ERRORS'
export const REMOVE_STORY = 'REMOVE_STORY'
export const CLEAR_STORIES = 'CLEAR_STORIES'

const receiveStories = (stories) => {
  return {
    type: RECEIVE_STORIES,
    stories
  }
}

const receiveStory = (story) => {
  return {
    type: RECEIVE_STORY,
    story
  }
}

const removeStory = (storyId) => {
  return {
    type: REMOVE_STORY,
    storyId
  }
}

const receiveStoryErrors = (errors) => {
  return {
    type: RECEIVE_STORY_ERRORS,
    errors
  }
}

export const clearStories = () => {
  return {
    type: CLEAR_STORIES
  }
}

export const fetchStories = () => (dispatch) => {
  return APIStoryUtil.fetchStories()
    .then(
      (stories) => dispatch(receiveStories(stories)),
      (errors) => dispatch(receiveStoryErrors(errors))
    )
}

export const fetchUserStories = (userId) => (dispatch) => {
  return APIStoryUtil.fetchUserStories(userId)
    .then(
      (stories) => dispatch(receiveStories(stories)),
      (errors) => dispatch(receiveStoryErrors(errors))
    )
}

export const fetchStory = (storyId) => (dispatch) => {
  return APIStoryUtil.fetchStory(storyId)
    .then(
      (story) => dispatch(receiveStory(story)),
      (errors) => dispatch(receiveStoryErrors(errors))
    )
}

export const createStory = (story) => (dispatch) => {
  return APIStoryUtil.createStory(story)
    .then(
      (story) => dispatch(receiveStory(story)),
      (errors) => dispatch(receiveStoryErrors(errors))
    )
}

export const updateStory = (story) => (dispatch) => {
  return APIStoryUtil.updateStory(story)
    .then(
      (story) => dispatch(receiveStory(story)),
      (errors) => dispatch(receiveStoryErrors(errors))
    )
}

export const deleteStory = (storyId) => (dispatch) => {
  return APIStoryUtil.deleteStory(storyId)
    .then(
      () => dispatch(removeStory(storyId)),
      (errors) => dispatch(receiveStoryErrors(errors))
    )
}