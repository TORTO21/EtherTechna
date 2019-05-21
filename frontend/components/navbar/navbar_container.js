import { connect } from 'react-redux'
import Navbar from './navbar'
import { logout } from '../../actions/session_actions'
import { openModal } from '../../actions/modal_actions'

const msp = (state) => {
  return {
    currentUserId: state.session.id
  }
}

const mdp = (dispatch) => {
  return {
    logout: () => dispatch(logout()),
    openModal: (modal) => dispatch(openModal(modal))
  }
}

export default connect(msp, mdp)(Navbar)