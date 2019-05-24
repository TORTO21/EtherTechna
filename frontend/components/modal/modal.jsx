import React from 'react'
import LoginForm from '../session/login_form_container'
import SignupForm from '../session/signup_form_container'

class Modal extends React.Component {
  constructor(props) {
    super(props)
    this.renderErrors = this.renderErrors.bind(this)
  }

  renderErrors() {
    const sessionErrors = this.props.errors.map((error, i) => {
      return <li key={`error-${i + 1}`}>{ error }</li>
    })

    return (
      <ul className="modal-form-error-container">
        { sessionErrors }    
      </ul>
    )
  }

  render () {
    const { modal, closeModal } = this.props
    if (!modal) return null
  
    let component
    switch (modal) {
      case 'login':
        component = <LoginForm />
        break
      case 'signup':
        component = <SignupForm />
        break
      default:
        return null
    }
    return (
      <div className="modal-background" onClick={ closeModal } >
        <div className={ `modal-child modal-${modal}` } onClick={ e => e.stopPropagation() } >
          { component }
        </div>
        <div>
          { this.renderErrors() }
        </div>
      </div>
    )
  }
}

export default Modal





// const Modal = ({ modal, closeModal }) => {
//   if (!modal) return null

//   let component
//   switch (modal) {
//     case 'login':
//       component = <LoginForm />
//       break
//     case 'signup':
//       component = <SignupForm />
//       break
//     default:
//       return null
//   }

//   return (
//     <div className="modal-background" onClick={ closeModal } >
//       <div className={ `modal-child modal-${modal}` } onClick={ e => e.stopPropagation() } >
//         { component }
//       </div>
//     </div>
//   )
// }

// export default Modal