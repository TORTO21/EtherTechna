import React from 'react'
import { Route, Switch } from 'react-router-dom'
import Modal from './modal/modal_container'
import NavBar from './navbar/nav_bar_container'
import MainPage from './main/main_page'
import MembershipPage from './signup/membership_page'
import StoryItem from '../components/stories/story_item_container'
import UserPage from '../components/user/user_page_container'
import { AuthRoute, ProtectedRoute } from '../util/route_util'


const App = () => {
  return (
    <div className='root-container'>
      <Modal />
      <NavBar className='navbar-container' />
      <Switch>
        <Route path="/users/:userId" component={ UserPage } />
        <AuthRoute path="/membership" component={ MembershipPage } />
        <Route path="/stories/:storyId" component={ StoryItem } />
        <Route path="stories/:storyId/edit" />
        <Route path="/" component={ MainPage } />
      </Switch>
    </div>
  )
}

export default App