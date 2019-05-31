import React from 'react'
import { Link } from 'react-router-dom'
import StoryIndexer from '../../util/story_indexer'

class StoriesIndex extends React.Component {
 
  componentDidMount() {
    this.props.fetchStories()
  }

  render () {
    const { stories } = this.props
    return (
      <div  className="story-index-container" >
        <ul>
          <StoryIndexer stories={ stories } />
        </ul>    
      </div>
    )
  }
}

export default StoriesIndex