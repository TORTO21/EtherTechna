import React from 'react'
import ReactDOM from 'react-dom'
import configureStore from './store/store'
import * as SessionActions from './actions/session_actions'
import * as StoryActions from './actions/story_actions'
import Root from './components/root'


document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root')
  let store
  if (window.currentUser) {
    const preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      },
      session: { currentUserId: window.currentUser.id }
    }
    store = configureStore(preloadedState)
    delete window.currentUser
  } else {
    store = configureStore()
  }
  
  window.store = store
  window.getState = store.getState
  window.dispatch = store.dispatch
  window.signup = SessionActions.signup
  window.login = SessionActions.login
  window.logout = SessionActions.logout
  window.fetchStories = StoryActions.fetchStories
  window.fetchUserStories = StoryActions.fetchUserStories
  window.fetchStory = StoryActions.fetchStory
  window.createStory = StoryActions.createStory
  window.updateStory = StoryActions.updateStory
  window.deleteStory = StoryActions.deleteStory

  ReactDOM.render(<Root store={ store } />, root)
})