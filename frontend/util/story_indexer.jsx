import React from 'react'
import { Link } from 'react-router-dom'
import { connect } from 'react-redux'
import { clearStories } from '../actions/story_actions'

class StoryIndexer extends React.Component {

  componentWillUnmount() {
    this.props.clearStories()
  }

  render () {
    const { stories } = this.props

    if (!stories) return null

    const storyLis = stories.map(story => {
      const { 
        id,
        title,
        lead_in,
        author_id,
        author,
        created,
        category,
        image_url,
      } = story
      return <li key={ id } className="story-item-container" >
        <div className="links-container">
          <Link
            to={ `/stories/${ id }` }
            className="story-title" >
              { title }
          </Link>
          <Link
            to={ `/stories/${ id }` }
            className="story-lead-in link-gray" >
              { lead_in }
          </Link>
          <div className="story-author">
            <Link
              to={ `/users/${ author_id }` }
              replace
              className="link-author" >
                { author }
            </Link> in { category }
          </div>
          <div className="story-tail row">
            { created }
          </div>
        </div>
        <div className="image-container">
          <Link to={ `/stories/${ id }` } replace >
            <img src={ image_url } alt={ title } className="story-image"/>    
          </Link>
        </div>
      </li>
    })

    return (
      <div className="story-index-container" >
        <ul>
          { storyLis }
        </ul>
      </div>
    )
  }
}

const mdp = dispatch => ({
  clearStories: () => dispatch(clearStories())
})

export default connect(null, mdp)(StoryIndexer)