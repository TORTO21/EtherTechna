import React from 'react'
import StoryEditor from './story_editor'

class StoryForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = this.props.story
    this.update = this.update.bind(this)
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleSubmit(e) {
    e.preventDefault()
    // this.props.submitAction(this.state)
  }

  update(field) {
    return e => this.setState({ [field]: e.target.value })
  }

  render () {
    // debugger
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
              onChange={ this.update('lead-in') }
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
          <StoryEditor />
          <input type="submit" value="Submit"/>
        </form>
        
      </div>
    )
  }
}

export default StoryForm

