import { connect } from 'react-redux'
import StoriesFeatIndex from './stories_feat_index'
import { fetchStories } from '../../actions/story_actions'

const msp = (state) => {
  const featStories = Object.values(state.entities.stories).slice(0, 5)
  return {
    stories: featStories.slice(2, 5),
    storyLeft: featStories.slice(0, 1),
    storyRight: featStories.slice(1, 2),
  }
}

const mdp = (dispatch) => {
  return {
    fetchStories: () => dispatch(fetchStories())
  }
}

export default connect(msp, mdp)(StoriesFeatIndex)