import { connect } from 'react-redux'
import Modal from './modal'
import { closeModal } from '../../actions/modal_actions'

const msp = (state) => {
  const { session } = state.errors
  return {
    modal: state.ui.modal,
    errors: session
  }
}

const mdp = (dispatch) => {
  return {
    closeModal: () => dispatch(closeModal())
  }
}

export default connect(msp, mdp)(Modal)