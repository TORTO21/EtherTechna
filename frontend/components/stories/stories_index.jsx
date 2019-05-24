import React from 'react'

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
      return <li key={ story.id }>
        <div className="story-title" >{ story.title }</div>
        <div className="story-lead-in" >{ story.lead_in }</div>
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