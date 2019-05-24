import React from 'react'
import { Link } from 'react-router-dom'

class StoryItem extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount() {
    const { storyId } = this.props.match.params
    this.props.fetchStory(storyId)
  }

  render () {
    const { story } = this.props
    if (!story) return null
    const { title, lead_in, body, author, author_id } = story
    
    return (
      <div className="story-item-container">
        <Link
          to={ `/users/${ author_id }` }
          className="story-author link" >
            { author }
        </Link>
        <div className="story-title" >{ title }</div>
        <div className="story-body" >{ body }</div>
      </div>
    )
  }
}

export default StoryItem