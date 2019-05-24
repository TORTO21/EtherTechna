import { connect } from 'react-redux'
import StoriesIndex from './stories_index'
import { fetchStories } from '../../actions/story_actions'

const msp = (state) => {
  // debugger
  return {
    stories: Object.values(state.entities.stories),
    // users: Object.values(state.entities.users)
  }
}

const mdp = (dispatch) => {
  return {
    fetchStories: () => dispatch(fetchStories())
  }
}

export default connect(msp, mdp)(StoriesIndex)