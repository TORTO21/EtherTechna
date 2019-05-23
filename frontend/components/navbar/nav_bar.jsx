import React from 'react'
import { Link } from 'react-router-dom'
import NavMenu from './nav_menu_container'

class NavBar extends React.Component {
  constructor(props) {
    super(props)
    
  }

  // when signed out:
  //   1) Link to Home (EtherTechna)
  //   2) Search
  //   3) Link to signup splash
  //   4) link to sign in
  //   5) link to signup
  // when signed in:
  //   1) Link to Home (EtherTechna)
  //   2) Search 
  //   3) Reading List 
  //   4) Notifications 
  //   5) Profile page / Profile Menu
  // when on membership page:
  //   1) Link to Home (EtherTechna)
  //   2) NavLink to About (Our story)
  //   3) NavLink to About membership (default)
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
          <a
            href="#"
            onClick={ e => loginGuest() }
            className="link" >
              Demo site features!
          </a>
          
          <a
            href="#"
            onClick={ () => openModal('login') }
            className="login link-green" >
              Sign in
          </a>
          <a
            href="#"
            onClick={ () => openModal('signup') }
            className="signup link-green">
              Get Started
          </a>
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