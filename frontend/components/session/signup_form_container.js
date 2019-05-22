import React from 'react'
import { connect } from 'react-redux'
import SessionForm from './session_form'
import { signup } from '../../actions/session_actions'
import { openModal, closeModal } from '../../actions/modal_actions'

const msp = (state) => {
  return {
    formType: "Sign up"
  }
}

const mdp = (dispatch) => {
  return {
    submitAction: (user) => dispatch(signup(user)),
    closeModal: () => dispatch(closeModal()),
    openModal: (modal) => dispatch(openModal(modal))
  }
}

export default connect(msp, mdp)(SessionForm)