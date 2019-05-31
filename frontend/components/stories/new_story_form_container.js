import { connect } from 'react-redux'
import StoryForm from './story_form'

const msp = (state, ownProps) => {
  return {
    errors: state.errors.stories,
    story: {
      title: "",
      lead_in: "",
      category: "",
      body: "",
    },
    formType: "New"
  }
}

const mdp = (dispatch) => {
  return {
    submitAction: (story) => dispatch(createStory(story))
  }
}

export default connect(msp, mdp)(StoryForm)