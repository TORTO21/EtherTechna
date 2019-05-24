import React from 'react'
import { Link } from 'react-router-dom'

class StoriesIndex extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount() {
    this.props.fetchStories()
  }

  render () {
    const { stories } = this.props
    const indexLis = stories.map( story => {
      return <li key={ story.id } className="story-index-container">
        <Link
          to={ `/stories/${ story.id }` }
          className="story-title"
          story={ story } >
            { story.title }
        </Link>
        <Link
          to={ `/stories/${ story.id }` }
          className="story-lead-in link"
          story={ story } >
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
      <div>
        <ul>
          { indexLis }
        </ul>    
      </div>
    )
  }
}

export default StoriesIndex