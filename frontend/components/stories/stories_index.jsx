import React from 'react'
import { Link } from 'react-router-dom'

class StoriesIndex extends React.Component {
 
  componentDidMount() {
    this.props.fetchStories()
  }

  render () {
    const { stories } = this.props
    const indexLis = stories.map( story => {
      return <li key={ story.id } >
        <Link
          to={ `/stories/${ story.id }` }
          className="story-title" >
            { story.title }
        </Link>
        <Link
          to={ `/stories/${ story.id }` }
          className="story-lead-in link" >
            { story.lead_in }
        </Link>
        <Link
          to={ `/users/${ story.author_id }` }
          className="story-author" >
            { story.author }
        </Link>
      </li>
    })
    return (
      <div  className="story-index-container" >
        <ul>
          { indexLis }
        </ul>    
      </div>
    )
  }
}

export default StoriesIndex