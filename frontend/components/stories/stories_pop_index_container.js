import { connect } from 'react-redux'
import StoriesPopIndex from './stories_pop_index'
import { fetchStories } from '../../actions/story_actions'

const msp = (state) => {
  return {
    stories: Object.values(state.entities.stories).slice(10, 15),
  }
}

const mdp = (dispatch) => {
  return {
    fetchStories: () => dispatch(fetchStories())
  }
}

export default connect(msp, mdp)(StoriesPopIndex)