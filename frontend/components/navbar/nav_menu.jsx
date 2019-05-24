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

  openMenu(e) {
    e.preventDefault()
    this.setState(
      { navMenuOpen: true },
      () => { document.addEventListener('click', this.closeMenu) }
    )
  }

  closeMenu() {
    if (this.dropDownMenu && !this.dropdownMenu.contains(event.target)) {
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
        className="nav-menu-dropdown hidden" 
        ref={ (el) => { this.dropdownMenu = el } }
      >
        <li>
          <ul className="nav-menu-stories">
            <li><a href="#">New story</a></li>
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
      <div>
        <UserAvatar />
        <a
          href="#"
          className="nav-user"
          onClick={ this.openMenu } >
          Logged in as: { currentUser.username }
        </a>
        { nav_menu }
      </div>
    )
  }
}

export default NavMenu