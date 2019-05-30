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

  componentDidUpdate(prevProps) {
    const { storyId } = this.props.match.params
    if (storyId !== prevProps.match.params.storyId) {
      this.props.fetchStory(storyId)
    }
  }

  render () {
    const { story, currentUserId } = this.props
    if (!story) return null
    const {
      title,
      lead_in,
      body,
      author,
      author_id,
      image_url,
      read_time,
      created
    } = story
    
    const editStory = currentUserId === author_id
      ? <Link
          to={ `/stories/${ story.id }/edit` }
          replace
          className="btn-green link-green" >
            Edit Story
        </Link>
      : null

    return (
      <div className="story-item-container">

        <div className="story-item-edit">
          { editStory }
        </div>

        <div className="story-item-image">
          <img src={ image_url } alt={ title } className="story-item-image"/>  
        </div>
        
        <div className="story-item-header">
          <div className="story-item-title">
            { title }
          </div>

          <div className="story-item-lead-in">
            { lead_in }
          </div>

          <div className="story-item-author-info">
            <div className="story-author-avatar">
              {/* TBD */}
            </div>

            <div className="story-item-author-container">
              <div>
                <Link
                  to={ `/users/${ author_id }` }
                  className="story-author link" >
                    { author }
                </Link>
                {/* <div className="follow-button"> Follow </div> */}
              </div>
              
              <div>
                <div className="story-tail">
                  { created }
                  <span className="story-date-divider"></span>
                  { read_time }
                  <span className="story-star"></span>
                </div>
              </div>

            </div>
          </div>
        </div>
         
        <div
          className="story-item-body"
          dangerouslySetInnerHTML={ { __html: body } }>
        </div>
  
      </div>
    )
  }
}

export default StoryItem