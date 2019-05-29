import { connect } from 'react-redux'
import StoryItem from './story_item'
import { fetchStory } from '../../actions/story_actions'

const msp = (state, ownProps) => {
  return {
    story: state.entities.stories[ownProps.match.params.storyId],
    currentUserId: state.session.currentUserId
  }
}

const mdp = (dispatch) => {
  return {
    fetchStory: (storyId) => dispatch(fetchStory(storyId))
  }
}

export default connect(msp, mdp)(StoryItem)