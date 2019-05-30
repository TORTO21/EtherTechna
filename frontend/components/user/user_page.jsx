import React from 'react'
import StoryIndex from '../stories/stories_index_container'
import StoryIndexer from '../../util/story_indexer'

class UserPage extends React.Component {
 
  componentDidMount() {
    const { userId } = this.props.match.params
    this.props.fetchUserStories(userId)
    this.props.fetchUser(userId)
  }

  // componentDidUpdate(prevProps) {
  //   const { userId } = this.props.match.params
  //   if(prevProps.match.params.userId !== userId) {
  //     this.props.fetchUserStories(userId)
  //     this.props.fetchUser(userId)
  //   }
  // }

  render () {
    const { user, stories } = this.props

    if (!user) return null

    const { username, description, created } = user


    return (
      <div className="user-page-container">
        <div className="user-page">
          <div className="user-profile">
            <div className="user-name-container">
              <div className="user-name">
                { username }
              </div>

              <div className="user-follow"></div>
            </div >
            <div className="user-description-container">
              <div className="user-description">
                { description }
              </div>
            </div>
            <div className="user-since">
              EtherTechna member since { created }
            </div>
            
          </div>

          <div className="user-latest">
            Latest
          </div>
          
          <StoryIndexer stories={ stories } />
        </div>
      </div>
    )
  }
}

export default UserPage