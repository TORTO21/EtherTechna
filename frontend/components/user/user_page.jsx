import React from 'react'

class UserPage extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      user: {},
      stories: [],
    }
  }

  componentDidMount() {
    const { userId } = this.props.match.params
    this.props.fetchUser(userId)
    this.props.fetchUserStories(userId)
  }

  render () {
    debugger
    const username = "Temp User's name"
    return (
      <div>
        <h1>Welcome to { username }'s profile</h1>

      </div>
    )
  }
}

export default UserPage