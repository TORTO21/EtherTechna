import React from 'react'
import { connect } from 'react-redux'
import SessionForm from './session_form'
import { signup } from '../../actions/session_actions'
import { closeModal } from '../../actions/modal_actions'

const msp = (state) => {
  return {
    formType: "Sign Up"
  }
}

const mdp = (dispatch) => {
  return {
    submitAction: (user) => dispatch(signup(user)),
    closeModal: () => dispatch(closeModal())
  }
}

export default connect(msp, mdp)(SessionForm)