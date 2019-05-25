import React from 'react'
import { Link } from 'react-router-dom'

export const StoryIndexer = ({ stories }) => {
  if (!stories) return null
  
  const storyLis = stories.map(story => {
    return <li key={ story.id } >
      <Link
        to={ `/stories/${ story.id }` }
        className="story-title" >
          { story.title }
      </Link>
      <Link
        to={ `/stories/${ story.id }` }
        className="story-lead-in link-gray" >
          { story.lead_in }
      </Link>
      <Link
        to={ `/users/${ story.author_id }` }
        className="story-author " >
          { story.author }
      </Link>
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