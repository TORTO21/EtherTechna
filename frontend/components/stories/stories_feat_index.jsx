import React from 'react'
import { Link } from 'react-router-dom'
import StoryIndexer from '../../util/story_indexer'

class StoriesFeatIndex extends React.Component {
 
  componentDidMount() {
    this.props.fetchStories()
  }

  render () {
    const { stories, storyLeft, storyRight } = this.props

    if (stories.length === 0) return null

    const storyLeftDisp = storyLeft.map((story) => {
      const { 
        id,
        title,
        lead_in,
        author_id,
        author,
        created,
        category,
        read_time,
        image_url
      } = story

      return  <div className="story-feat-left-item-container">
        <div className="story-feat-left-image-container">
          <Link to={ `/stories/${ id }` } replace >
            <img src={ image_url } alt={ title } className="story-feat-left-image"/>    
          </Link>
        </div>
        <div className="story-feat-left-links-container">
          <div className="story-feat-left-title-container">
            <Link
              to={ `/stories/${ id }` }
              className="story-title" >
                { title }
            </Link>
          </div>
          
          <div className="story-feat-left-lead-in-container">
            <Link
              to={ `/stories/${ id }` }
              className="story-feat-left-lead-in link-gray" >
                { lead_in }
            </Link>
          </div>
          <div className="story-feat-left-info">
            <div className="story-feat-left-author">
              <Link
                to={ `/users/${ author_id }` }
                replace
                className="link-author" >
                  { author }
              </Link> in { category }
            </div>

            <div className="story-feat-tail row">
              { created }
              <span className="story-feat-date-divider"></span>
              { read_time }
              <span className="story-feat-star"></span>
            </div>
          </div>
        </div>
      </div>
    })

// =====================RIGHT BELOW=======================

    const storyRightDisp = storyRight.map((story) => {
      const { 
        id,
        title,
        lead_in,
        author_id,
        author,
        created,
        category,
        read_time,
        image_url
      } = story

      return  <div className="story-feat-right-item-container">
        <div className="story-feat-right-image-container">
          <Link to={ `/stories/${ id }` } replace >
            <img src={ image_url } alt={ title } className="story-feat-right-image"/>    
          </Link>
        </div>
        <div className="story-feat-right-links-container">
          <div className="story-feat-right-title-container">
            <Link
              to={ `/stories/${ id }` }
              className="story-title" >
                { title }
            </Link>
          </div>
          
          <div className="story-feat-right-lead-in-container">
            <Link
              to={ `/stories/${ id }` }
              className="story-feat-right-lead-in link-gray" >
                { lead_in }
            </Link>
          </div>
          <div className="story-feat-right-info">
            <div className="story-feat-right-author">
              <Link
                to={ `/users/${ author_id }` }
                replace
                className="link-author" >
                  { author }
              </Link> in { category }
            </div>

            <div className="story-feat-tail row">
              { created }
              <span className="story-feat-date-divider"></span>
              { read_time }
              <span className="story-feat-star"></span>
            </div>
          </div>
        </div>
      </div>
    })




// =====================MIDDLE BELOW======================

    const storyLis = stories.map((story) => {
      const { 
        id,
        title,
        lead_in,
        author_id,
        author,
        created,
        category,
        read_time,
        image_url
      } = story

      return <li key={ id } >
        <div className="story-feat-item-container">
          <div className="story-feat-image-container">
            <Link to={ `/stories/${ id }` } replace >
              <img src={ image_url } alt={ title } className="story-feat-image"/>    
            </Link>
          </div>
          <div className="story-feat-links-container">
            <div className="story-feat-title-container">
              <Link
                to={ `/stories/${ id }` }
                className="story-title" >
                  { title }
              </Link>
            </div>
            
            <div className="story-feat-lead-in-container">
              <Link
                to={ `/stories/${ id }` }
                className="story-feat-lead-in link-gray" >
                  { lead_in }
              </Link>
            </div>

            <div className="story-feat-author">
              <Link
                to={ `/users/${ author_id }` }
                replace
                className="link-author" >
                  { author }
              </Link> in { category }
            </div>

            <div className="story-feat-tail row">
              { created }
              <span className="story-feat-date-divider"></span>
              { read_time }
              <span className="story-feat-star"></span>
            </div>
          </div>
        </div>
      </li>
    })



    return (
      <div  className="story-feat-index-container" >
        <div className="story-feat-lead-left">
          { storyLeftDisp }
        </div>

        <div className="story-feat-lead-middle">
          <ul>
            { storyLis }
          </ul>    
        </div>
        
        <div className="story-feat-lead-right">
          { storyRightDisp }
        </div>
      </div>
    )
  }
}

export default StoriesFeatIndex