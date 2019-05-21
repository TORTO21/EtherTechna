import React from 'react'
import { connect } from 'react-redux'
import SessionForm from './session_form'
import { login } from '../../actions/session_actions'
import { closeModal } from '../../actions/modal_actions'

const msp = (state) => {
  return {
    formType: "Log In"
  }
}

const mdp = (dispatch) => {
  return {
    submitAction: (user) => dispatch(login(user)),
    closeModal: () => dispatch(closeModal())
  }
}

export default connect(msp, mdp)(SessionForm)