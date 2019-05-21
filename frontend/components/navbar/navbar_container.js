import { connect } from 'react-redux'
import Navbar from './navbar'

const msp = (state) => {
  return {
    currentUserId: state.session.id
  }
}

const mdp = (dispatch) => {
  return {
    logout: () => dispatch(logout())
  }
}

export default connect(msp, mdp)(Navbar)