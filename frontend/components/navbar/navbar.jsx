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


  render () {
    const navItems = this.props.currentUserId
      ? <div>
          <Link to={`/users/${ this.props.currentUserId }`} replace >Profile</Link>
          <button onClick={ e => this.props.logout() }>Logout</button> {/* temp */}
        </div>
      : <div>
          <Link to="/signup" replace >Become a member</Link>
          {/* <Link to=# >Sign in</Link> */}
          <a href="#">Sign in</a> {/* change to Modal */}
          {/* <Link to=# >Get Started</Link> */}
          <a href="#">Get Started</a> {/* change to Modal */}
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