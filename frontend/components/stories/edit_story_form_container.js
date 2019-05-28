import { connect } from 'react-redux'
import StoryForm from './story_form'
import { 
  fetchStory,
  updateStory
 } from '../../actions/story_actions'

const msp = (state, ownProps) => {
  return {
    errors: state.errors.stories,
    story: state.entities.stories[ownProps.match.params.storyId],
    formType: "Edit"
  }
}

const mdp = (dispatch) => {
  return {
    fetchStory: (id) => dispatch(fetchStory(id)),
    submitAction: (story) => dispatch(updateStory(story))
  }
}

export default connect(msp, mdp)(StoryForm)