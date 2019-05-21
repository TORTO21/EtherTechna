import React from 'react'
import { Link } from 'react-router-dom'

class SessionForm extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      username: "",
      email: "",
      password: "",
    }
    this.handleSubmit = this.handleSubmit.bind(this)
  }

  handleSubmit(e) {
    e.preventDefault()
    this.props.closeModal()
    const user = Object.assign({}, this.state)
    this.props.submitAction(user)
  }

  update(field) {
    return e => this.setState({ [field]: e.target.value })
  }

  render () {
    const greeting = this.props.formType === "Log In"
    ? <div className="form-greeting">
        <h1 className="form-header">
          Welcome back.
        </h1>
        <p className="form-description">
          Sign in to get personalized story recommendations, follow authors and topics you love, and interact with stories.
        </p>
      </div>
    : <div className="form-greeting">
        <h1 className="form-header">
          Join EtherTechna.
        </h1>
        <p className="form-description">
        Create an account to receive great stories in your inbox, personalize your homepage, and follow authors and topics that you love.
        </p>
      </div>

    return (
      <div className="form-session">
        { greeting }
        <form 
          onSubmit={ this.handleSubmit }
          className="form-inputs" >
          <label>Username:
            <input
              type="text"
              onChange={ this.update('username') }
              value={ this.state.username }
            />
          </label>
          <label>Email:
            <input
              type="email"
              onChange={ this.update('email') }
              value={ this.state.email }
            />
          </label>
          <label>Password:
            <input 
              type="password"
              onChange={ this.update('password') }
            />
          </label>
          <input type="submit" value={this.props.formType}/>
        </form>
        <p className="form-footer">To make Medium work, we log user data and share it with service providers. Click “Sign up” above to accept Medium’s Terms of Service & Privacy Policy.</p>
      </div>
    )
  }
}

export default SessionForm