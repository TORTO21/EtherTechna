import { connect } from 'react-redux'
import SessionForm from './session_form'
import { login } from '../../actions/session_actions'
import { openModal, closeModal } from '../../actions/modal_actions'

const msp = (state) => {
  return {
    formType: "Sign in",
  }
}

const mdp = (dispatch) => {
  return {
    submitAction: (user) => dispatch(login(user)),
    closeModal: () => dispatch(closeModal()),
    openModal: (modal) => dispatch(openModal(modal))
  }
}

export default connect(msp, mdp)(SessionForm)