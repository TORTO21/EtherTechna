import { connect } from 'react-redux'
import Navbar from './navbar'
import { logout } from '../../actions/session_actions'
import { openModal } from '../../actions/modal_actions'

const msp = (state) => {
  const username = state.entities.users[state.session.id]
    ? state.entities.users[state.session.id].username
    : null
  return {
    currentUserId: state.session.id,
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