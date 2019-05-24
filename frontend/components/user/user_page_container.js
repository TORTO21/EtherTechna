import { connect } from 'react-redux'
import UserPage from './user_page'
import { fetchUser } from '../../actions/user_actions'
import { fetchUserStories } from '../../actions/story_actions'

const msp = (state) => {
  return {

  }
}

const mdp = (dispatch) => {
  return {
    fetchUser: (userId) => dispatch(fetchUser(userId)),
    fetchUserStories: (userId) => dispatch(fetchUserStories(userId))
  }
}

export default connect(msp, mdp)(UserPage)