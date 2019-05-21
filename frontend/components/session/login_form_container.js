import { connect } from 'react-redux'
import SessionForm from './session_form'
import { login } from '../../actions/session_actions'

const msp = (state) => {
  return {
    formType: 'Log In'
  }
}

const mdp = (dispatch) => {
  return {
    submitAction: (user) => dispatch(login(user))
  }
}

export default connect(msp, mdp)(SessionForm)