import React from 'react'
import { connect } from 'react-redux'
import StoryForm from './story_form'
import { 
  fetchStory,
  updateStory
 } from '../../actions/story_actions'

class EditStoryForm extends React.Component {
  
  componentDidMount() {
    this.props.fetchStory(this.props.match.params.storyId)
  }
  
  componentDidUpdate(prevProps) {
    if (this.props.match.params.storyId !== prevProps.match.params.storyId) {
      this.props.fetchStory(this.props.match.params.storyId)
    }
  }

  render() {
    if (!this.props.story) return null
    const { errors, story, formType, submitAction, history } = this.props
    
    return (
      <StoryForm
        errors={ errors }
        story={ story }
        formType={ formType }
        submitAction={ submitAction }
        history = { history }
      />
    );
  }
}

const msp = (state, ownProps) => {
  return {
    errors: state.errors.stories,
    story: state.entities.stories[ownProps.match.params.storyId],
    formType: "Edit"
  }
}

const mdp = (dispatch) => {
  return {
    fetchStory: (storyId) => dispatch(fetchStory(storyId)),
    submitAction: (story) => dispatch(updateStory(story))
  }
}

export default connect(msp, mdp)(EditStoryForm)