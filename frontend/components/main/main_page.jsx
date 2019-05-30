import React from 'react'
import { Link } from 'react-router-dom'
import StoriesIndex from '../stories/stories_index_container'
import StoriesPopIndex from '../stories/stories_pop_index_container'

class MainPage extends React.Component {

  render() {
    return (
      <div>
        <div className="main-featured-container">
          <div className="main-featured">

          </div>
          <div className="main-featured-break-link">
            <a
              href="#"
              className="link-green" >
                SEE ALL FEATURED >
            </a>
          </div>
        </div>

        <div className="main-divider"></div>
        
        <div className="main-index">
          <div className="main-suggested">
            <StoriesIndex />
          </div>

          <div className="main-popular">
            <div className="main-pop-title">
              Popular on EtherTechna
            </div>

            <div className="main-pop-index-container">
              <StoriesPopIndex />
            </div>
            
          </div>
        </div>

        <div className="main-footer">
          
        </div>
        {/* <ul>
          <li>featured stories</li>
          <li>personlized stories (if logged in)</li>
          <li>popular stories</li>
          <li>story index</li>
          <br />
          <br />
        </ul> */}
      </div>
    )
  }
}

export default MainPage