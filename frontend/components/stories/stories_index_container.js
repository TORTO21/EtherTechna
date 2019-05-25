import { connect } from 'react-redux'
import StoriesIndex from './stories_index'
import { fetchStories } from '../../actions/story_actions'

const msp = (state) => {
  return {
    stories: Object.values(state.entities.stories),
  }
}

const mdp = (dispatch) => {
  return {
    fetchStories: () => dispatch(fetchStories())
  }
}

export default connect(msp, mdp)(StoriesIndex)