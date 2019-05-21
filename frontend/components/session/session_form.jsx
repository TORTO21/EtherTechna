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
    const user = Object.assign({}, this.state)
    this.props.submitAction(user)
  }

  update(field) {
    return e => this.setState({ [field]: e.target.value })
  }

  render () {
    return (
      <div>
        <form
          onSubmit={ this.handleSubmit }
          className="form-login">
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
      </div>
    )
  }
}

export default SessionForm