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
    console.log(this.state)
  }

  update(field) {
    return e => this.setState({ [field]: e.target.value })
  }

  updateBody(editorContent) {
    this.setState({ body: editorContent })
  }

  render () {
    return (
      <div>
        <form onSubmit={ this.handleSubmit } >
          <label>
            <input
              type="text"
              placeholder="Title"
              className="story-form-title"
              onChange={ this.update('title') }
            />
          </label>
          <label>
            <input
              type="text"
              placeholder="Lead In"
              className="story-form-lead-in"
              onChange={ this.update('lead_in') }
            />
          </label>
          <label>
            <input
              type="text"
              placeholder="Category"
              className="story-form-category"
              onChange={ this.update('category') }
            />
          </label>
          <StoryEditor body={ this.state.body } updateBody={ this.updateBody } />
          <input type="submit" value="Submit"/>
        </form>
        
      </div>
    )
  }
}

export default StoryForm

