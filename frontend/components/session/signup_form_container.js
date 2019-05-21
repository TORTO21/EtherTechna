import { connect } from 'react-redux'
import SessionForm from './session_form'
import { signup } from '../../actions/session_actions'

const msp = (state) => {
  return {
    formType: "Sign Up"
  }
}

const mdp = (dispatch) => {
  return {
    submitAction: (user) => dispatch(signup(user))
  }
}

export default connect(msp, mdp)(SessionForm)