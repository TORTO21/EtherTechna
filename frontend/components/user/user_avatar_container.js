import { connect } from 'react-redux'
import UserAvatar from './user_avatar'

const msp = (state) => {
  const currentUser = state.entities.users[state.session.currentUserId]
    ? state.entities.users[state.session.currentUserId] : null
  return {
    currentUser
  }
}

const mdp = (dispatch) => {
  return {

  }
}

export default connect(msp, mdp)(UserAvatar)