import React from 'react'
import StoryIndex from '../stories/stories_index_container'
class UserPage extends React.Component {
 
  componentDidMount() {
    const { userId } = this.props.match.params
    this.props.fetchUserStories(userId)
    this.props.fetchUser(userId)
  }

  componentDidUpdate(prevProps) {
    const { userId } = this.props.match.params
    if(prevProps.match.params.userId !== userId) {
      this.props.fetchUserStories(userId)
      this.props.fetchUser(userId)
    }
  }

  render () {
    const { user, stories } = this.props

    if (!user) return null

    return (
      <div>
        <h1>Welcome to { user.username }'s profile</h1>
        
      </div>
    )
  }
}

export default UserPage