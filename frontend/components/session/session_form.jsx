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
    this.props.submitAction(user).then(
      () => this.props.closeModal(),
      errors => console.log(errors))
  }

  update(field) {
    return e => this.setState({ [field]: e.target.value })
  }

  render () {
    const { formType, closeModal, openModal } = this.props
    
    const greeting = formType === "Sign in"
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

    const sessionSwitch = formType === "Sign in"
    ? <div className="form-switch" >
        <div>No account?&nbsp;</div>
        <div
          onClick={ () => openModal('signup') }
          className="signup link-green">
            Create one
        </div>
      </div>
    : <div className="form-switch" >
        <div>Already have an Account?&nbsp;</div>
        <div
          onClick={ () => openModal('login') }
          className="login link-green">
            Sign in
        </div>
      </div>
    
    const inputEmail = formType === "Sign in"
    ? null
    : <input
        type="email"
        onChange={ this.update('email') }
        value={ this.state.email }
        placeholder="Email"
        className="form-input"
      />

    return (
      <div className="form-container">

        { greeting }

        <div onClick={ e => closeModal() } className="link form-close">&times;</div>
        
        <form 
          onSubmit={ this.handleSubmit }
          className="form-input-container" >
          <input
            type="text"
            onChange={ this.update('username') }
            value={ this.state.username }
            placeholder="Username"
            className="form-input"
          />
          { inputEmail }
          <input 
            type="password"
            onChange={ this.update('password') }
            placeholder="Password"
            className="form-input"
          />
          <input
            type="submit"
            value={ formType }
            className="form-input form-button"
          />
        </form>
        
        <div className="form-footer">
          { sessionSwitch }
          <p className="form-disclaimer" >To make EtherTechna work, we log user data and share it with service providers. Click "{ formType }" above to accept EtherTechna’s Terms of Service & Privacy Policy.</p>
        </div>

      </div>
    )
  }
}

export default SessionForm