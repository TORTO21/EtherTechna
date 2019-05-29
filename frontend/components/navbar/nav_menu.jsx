import React from 'react'
import { Link } from 'react-router-dom'
import UserAvatar from '../../components/user/user_avatar_container'

class NavMenu extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      navMenuOpen: false,
    }
    this.openMenu = this.openMenu.bind(this)
    this.closeMenu = this.closeMenu.bind(this)
  }

  openMenu() {
    this.setState(
      { navMenuOpen: true },
      () => { document.addEventListener('click', this.closeMenu) }
    )
  }

  closeMenu(e) {
    if (this.dropdownMenu && !this.dropdownMenu.contains(e.target)) {
      this.setState(
        { navMenuOpen: false },
        () => { document.removeEventListener('click', this.closeMenu) }
      )
    }
  }

  render () {
    const { logout, currentUser } = this.props
    const nav_menu = this.state.navMenuOpen 
    ? <ul
        id="nav-menu-dropdown"
        className="nav-menu-dropdown" 
        ref={ (el) => { this.dropdownMenu = el } }
      >
        <li>
          <ul className="nav-menu-stories">
            <li>
              <Link
                to="/stories/new"
                replace
                className="link" >
                  New Story
              </Link>
            </li>
            <li><a href="#">Stories</a></li>
            <li><a href="#">Series</a></li>
            <li><a href="#">Stats</a></li>
          </ul>
        </li>
        <li>
          <ul className="nav-menu-user">
            <li>
              <Link
                to={ `/users/${ currentUser.id }` }
                replace
                className="link" >
                  Profile
              </Link>
            </li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Help</a></li>
            <li>
              <a
              href="#"
              onClick={ e => logout() }
              className="link" >
                Sign out
              </a>  
            </li>
          </ul>
        </li>
      </ul>
    : null

    return (
      <div className="nav-menu-container">
        <div>
          <UserAvatar />
        </div>
        <div
          className="nav-user"
          onClick={ this.openMenu } >
          Logged in as: { currentUser.username }
        </div>
        { nav_menu }
      </div>
    )
  }
}

export default NavMenu