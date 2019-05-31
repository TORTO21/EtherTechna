import React from 'react'
import StoryEditor from './story_editor'

class StoryForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = this.props.story
    this.update = this.update.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
    this.updateBody = this.updateBody.bind(this)
  }

  handleSubmit(e) {
    e.preventDefault()
    this.props.submitAction(this.state)
      .then((action) => this.props.history.push(`/stories/${action.story.id}`))
  }

  update(field) {
    return e => this.setState({ [field]: e.target.value })
  }

  updateBody(editorContent) {
    this.setState({ body: editorContent })
  }

  render () {
    const editorBody = this.props.story
      ? this.props.story.body
      : ""

    const { title, lead_in, category, body } = this.state
    return (
      <div className="story-form-container">
        <form
          onSubmit={ this.handleSubmit }
          className="story-form" >
          <label>
            <input
              type="text"
              placeholder=" Title"
              className="story-form-title story-form-input"
              onChange={ this.update('title') }
              value={ title }
            />
          </label>
          <label>
            <input
              type="text"
              placeholder=" Lead In"
              className="story-form-lead-in story-form-input"
              onChange={ this.update('lead_in') }
              value={ lead_in }
            />
          </label>
          <label>
            <input
              type="text"
              placeholder=" Category"
              className="story-form-category story-form-input"
              onChange={ this.update('category') }
              value={ category }
            />
          </label>
          <StoryEditor body={ editorBody } updateBody={ this.updateBody } />
          <input
            type="submit"
            value="Ready to Publish?"
            className="story-form-submit btn-green link-green link" />
        </form>
        
      </div>
    )
  }
}

export default StoryForm

