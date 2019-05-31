import React from 'react'
import { Link } from 'react-router-dom'
import NavMenu from './nav_menu_container'

class NavBar extends React.Component {
  constructor(props) {
    super(props)
  }

  // when signed out:
  //   DONE) Link to Home (EtherTechna)
  //   2) Search
  //   3) Link to signup splash
  //   DONE) link to sign in
  //   DONE) link to signup
  // when signed in:
  //   DONE) Link to Home (EtherTechna)
  //   2) Search 
  //   3) Reading List 
  //   4) Notifications 
  //   DONE) Profile page / Profile Menu
  // when on membership page:
  //   DONE) Link to Home (EtherTechna)
  //   2) NavLink to About ("Our story")
  //   3) NavLink to About "Membership" (default)
  //   4) Button Upgrade (Signin Modal)

  render () {
    const { 
      currentUser,
      openModal,
      logout,
      loginGuest
    } = this.props
    
    const navMenu = currentUser
      ? <div className="nav-logged-in">
          <NavMenu currentUser={ currentUser } />
        </div>
      : <div className="nav-logged-out">
          {/* <Link
            to="/membership"
            replace
            className="link" >
              Become a member
          </Link> */}        {/* Bonus feature */}
          <div
            onClick={ e => loginGuest() }
            className="link" >
              Demo site features!
          </div>
          
          <div
            onClick={ () => openModal('login') }
            className="login link-green link" >
              Sign in
          </div>

          <div
            onClick={ () => openModal('signup') }
            className="signup link-green link">
              Get Started
          </div>
        </div>

    return (
      <div className="navbar">
        <Link to="/" className="nav-logo" replace >EtherTechna</Link>
        <div className="nav-menu">
          { navMenu }
        </div>
      </div>
    )
  }
}

export default NavBar