import React from 'react'
import { Link } from 'react-router-dom'
import { connect } from 'react-redux'
import { clearStories } from '../actions/story_actions'

class StoryIndexer extends React.Component {

  componentWillUnmount() {
    this.props.clearStories()
  }s

  render () {
    const { stories } = this.props

    if (stories.length === 0) return null

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
        read_time,
      } = story

      const storyImg = image_url
      ? <img
          src={ image_url }
          alt={ title }
          className="story-image"
        />
      : <img
          src={ window.logo }
          alt="EtherTechna"
          className="story-image"
        />

      return <li key={ id } className="story-indexer-container" >
        <div className="story-links-container">
          <Link
            to={ `/stories/${ id }` }
            className="story-title" >
              { title }
          </Link>
          <div className="story-lead-in-container">
            <Link
              to={ `/stories/${ id }` }
              className="story-lead-in link-gray" >
                { lead_in }
            </Link>
          </div>
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
            <span className="story-date-divider"></span>
            { read_time }
            <span className="story-star"></span>
          </div>
        </div>
        <div className="image-container">
          <Link to={ `/stories/${ id }` } replace >
            { storyImg }
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