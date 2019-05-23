import React from 'react'

class UserAvatar extends React.Component {
  constructor(props) {
    super(props)
  }

  render () {
    const { currentUser } = this.props
    
    const userAvatar = currentUser // eventually check for uploaded image existence
      ? <p className="user-avatar">
          { currentUser.username }
        </p>
      : null

    return (
      <div>
        { userAvatar }
      </div>
    )
  }
}

export default UserAvatar