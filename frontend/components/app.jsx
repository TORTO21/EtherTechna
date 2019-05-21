import React from 'react'
import { Route, Switch } from 'react-router-dom'
import Navbar from './navbar/navbar_container'
import MainPage from './main/main_page'
import SignupPage from './signup/signup_page'
import ProfilePage from './profile/profile_page'
import { AuthRoute, ProtectedRoute } from '../util/route_util'


const App = () => {
  return (
    <div>
      <Navbar />
      {/* <Switch> */}
        <ProtectedRoute path="/users/:userId" component={ ProfilePage } />
        <AuthRoute path="/signup" component={ SignupPage } />
        <Route path="/" component={ MainPage } />
      {/* </Switch> */}
    </div>
  )
}

export default App