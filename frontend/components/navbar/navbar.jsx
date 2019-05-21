import React from 'react'
import LoginForm from '../session/login_form_container'
import SignupForm from '../session/signup_form_container'
import { Link } from 'react-router-dom'

class Navbar extends React.Component {
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
    const { currentUserId, logout, openModal } = this.props
    const navItems = currentUserId
      ? <div className="nav-logged-in">
          <Link to={ `/users/${ currentUserId }` } replace >Profile</Link>
          <button onClick={ e => logout() }>Logout</button> {/* temp */}
        </div>
      : <div className="nav-logged-out">
          <Link to="/membership" replace >Become a member</Link>
          <a
            href="#"
            onClick={ () => openModal('login') }
            className="login" >
              Sign in
          </a>
          <a
            href="#"
            onClick={ () => openModal('signup') }
            className="signup">
              Get Started
          </a>
        </div>

    return (
      <div className="navbar">
        <Link to="/" className="nav-home" replace >EtherTechna</Link>
        { navItems }
      </div>
    )
  }
}

export default Navbar