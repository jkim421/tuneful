import React from 'react';
import { Redirect, Link } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      username: "",
      password: "",
      name: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.demoUser = this.demoUser.bind(this);
  }

  componentWillUnmount(e) {
    this.props.clearErrors();
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.processForm(this.state).then(this.props.closeModal);
  }

  demoUser(e) {
    e.preventDefault();
    this.props.demoUserLogin({
      username: "demo",
      password: "password"
    })
  }

  update(field) {
    return (
      (e) => this.setState({[field]: e.target.value})
    );
  }

  formHeader() {
    if (this.props.formType === "Sign up") {
      return <h1>Sign up as a fan</h1>
    } else if (this.props.formType === 'Log in') {
      return <h1>Log in</h1>
    } else {
      return <h1>Sign up as an artist</h1>
    }
  }

  emailField() {
    if (this.props.formType === "Log in") {
      return <div/>
    } else {
      return (
        <>
          <label htmlFor="session-email">Email</label>
          <input
            type="text"
            className="input-field"
            onChange={this.update('email')} />
        </>
      )
    }
  }

  nameField() {
    if (this.props.formType === "Sign up as an artist") {
      return (
        <>
        <label htmlFor="session-band-name">Band Name</label>
        <input
          type="text"
          className="input-field"
          onChange={this.update('name')} />
        </>
    )
    } else {
      return <div/>
    }
  }

  redirectLink() {
    if (this.props.formType === "Log in") {
      return <p className="session-footer">Don't have an account? {this.props.otherForm}.</p>
      } else {
      return <p className="session-footer">Already have an account? {this.props.otherForm}.</p>
      }
    }

  render() {
    return (
      <div>
        <div className="session-form">
          {this.formHeader()}
          <p className="close-form" onClick={this.props.closeModal}>&times;</p>
          <form
            className={this.props.formClass} onSubmit={this.handleSubmit}>
            <div className="session-form-inputs">
              {this.nameField()}
              <p className="session-errors">
                {this.props.nameError}
              </p>
              {this.emailField()}
              <p className="session-errors">
                {this.props.emailError}
              </p>

              <label htmlFor="session-username">Username</label>
              <input
              type="text"
              id="session-username"
              onChange={this.update('username')} />
              <p className="session-errors">
                {this.props.usernameError}
              </p>

              <label htmlFor="session-password">Password</label>
              <input
              type="password"
              onChange={this.update('password')} />
              <p className="session-errors">
                {this.props.passwordError}
              </p>

              <p className="session-errors">
                {this.props.loginError}
              </p>

              <input
              type="submit"
              value={this.props.formType}/>
            </div>
            {this.redirectLink()}
            <p className="session-footer">
              Can't commit? Explore our site with a &nbsp;
              <button
                className="session-footer-button"
                onClick={this.demoUser}>demo login</button>.
            </p>
          </form>
        </div>
      </div>
    );
  }

}

export default SessionForm;
