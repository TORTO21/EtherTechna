import React from 'react'
import { Link } from 'react-router-dom'
import StoryIndexer from '../../util/story_indexer'

class StoriesPopIndex extends React.Component {
 
  componentDidMount() {
    this.props.fetchStories()
  }

  render () {
    const { stories } = this.props

    if (stories.length === 0) return null

    const storyLis = stories.map((story, i) => {
      const { 
        id,
        title,
        author_id,
        author,
        created,
        category,
        read_time,
      } = story

      return <li key={ id } >
        <div className="story-pop-item-container">
          <div className="story-pop-item-number">
            0{ i + 1 }
          </div>
          
          <div className="story-pop-links-container">
            <Link
              to={ `/stories/${ id }` }
              className="story-title" >
                { title }
            </Link>

            <div className="story-pop-author">
              <Link
                to={ `/users/${ author_id }` }
                replace
                className="link-author" >
                  { author }
              </Link> in { category }
            </div>

            <div className="story-pop-tail row">
              { created }
              <span className="story-pop-date-divider"></span>
              { read_time }
              <span className="story-pop-star"></span>
            </div>
          </div>
        </div>
      </li>
    })



    return (
      <div  className="story-pop-index-container" >
        <ul>
          { storyLis }
        </ul>    
      </div>
    )
  }
}

export default StoriesPopIndex