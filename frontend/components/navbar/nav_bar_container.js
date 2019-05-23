import { connect } from 'react-redux'
import Navbar from './nav_bar'
import { logout } from '../../actions/session_actions'
import { openModal } from '../../actions/modal_actions'

const msp = (state) => {
  const username = state.entities.users[state.session.currentUserId]
    ? state.entities.users[state.session.currentUserId].username
    : null
  return {
    currentUser: username
  }
}

const mdp = (dispatch) => {
  return {
    logout: () => dispatch(logout()),
    openModal: (modal) => dispatch(openModal(modal)),
    loginGuest: () => dispatch(login({
      username: "guest",
      email: "guest@EtherTechna.com",
      password: "password"
    }))
  }
}

export default connect(msp, mdp)(Navbar)