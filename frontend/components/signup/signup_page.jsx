import React from 'react';
import SignupForm from '../session/signup_form_container'

class SignupPage extends React.Component {
  constructor(props) {
    super(props)
  }

  render () {
    return (
      <div>
        <h1>Signup</h1><br/>
        <SignupForm />
        <h1>SPLASH INFO</h1>
      </div>
    )
  }
}

export default SignupPage