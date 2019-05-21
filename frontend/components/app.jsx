import React from 'react'
import { Route, Switch } from 'react-router-dom'
import Modal from './modal/modal_container'
import Navbar from './navbar/navbar_container'
import MainPage from './main/main_page'
import MembershipPage from './signup/membership_page'
import ProfilePage from './profile/profile_page'
import { AuthRoute, ProtectedRoute } from '../util/route_util'


const App = () => {
  return (
    <div>
      <Modal />
      <Navbar />
      <Switch>
        <ProtectedRoute path="/users/:userId" component={ ProfilePage } />
        <AuthRoute path="/membership" component={ MembershipPage } />
        <Route path="/" component={ MainPage } />
      </Switch>
    </div>
  )
}

export default App