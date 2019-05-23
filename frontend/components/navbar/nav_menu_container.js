import { connect } from 'react-redux'
import NavMenu from './nav_menu'

const msp = (state) => {
  return {

  }
}

const mdp = (dispatch) => {
  return {
    logout: () => dispatch(logout()),
  }
}

export default connect(msp, mdp)(NavMenu)