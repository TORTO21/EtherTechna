import React from 'react'
import { Link } from 'react-router-dom'

class MainPage extends React.Component {


  render() {
    return (
      <div>
        <h1>MAIN PAGE</h1>
        <ul>
          <li>featured stories</li>
          <li>personlized stories (if logged in)</li>
          <li>popular stories</li>
          <li>story index</li>
        </ul>
      </div>
    )
  }
}

export default MainPage