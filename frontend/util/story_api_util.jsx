export const fetchStories = () => {
  return $.ajax({
    method: 'GET',
    url: 'api/stories'
  })
}

export const fetchUserStories = (userId) => {
  return $.ajax({
    method: 'GET',
    url: `api/users/${userId}/stories`
  })
}

export const fetchStory = (storyId) => {
  return $.ajax({
    method: 'GET',
    url: `api/stories/${storyId}`
  })
}

export const createStory = (story) => {
  debugger
  return $.ajax({
    method: 'POST',
    url: 'api/stories',
    data: { story }
  })
}

export const updateStory = (story) => {
  return $.ajax({
    method: 'PATCH',
    url: `api/stories/${ story.id }`,
    data: { story }
  })  
}

export const deleteStory = (storyId) => {
  return $.ajax({
    method: 'DELETE',
    url: `api/stories/${storyId}`
  })
}