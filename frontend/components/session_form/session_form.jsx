import React from 'react';
import { withRouter } from 'react-router';
import { Redirect, Link } from 'react-router-dom';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: "",
      username: "",
      password: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.demoUser = this.demoUser.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.processForm(this.state);
  }

  demoUser(e) {
    e.preventDefault();
    this.props.demoUserLogin({
      username: "demo",
      password: "password"
    });
  }

  update(field) {
    return (
      (e) => this.setState({[field]: e.target.value})
    );
  }

  formHeader() {
    if (this.props.formType === "Sign up") {
      return <h1>Sign up for a tunesmith account</h1>
    } else {
      return <h1>Log in</h1>
    }
  }

  emailField() {
    if (this.props.formType === "Sign up") {
      return (
        <>
          <label htmlFor="session-email">Email</label>
          <input
            type="text"
            className="input-field"
            onChange={this.update('email')} />
        </>
      )
    } else {
      return <div/>
    }
  }

  redirectLink() {
    if (this.props.formType === "Sign up") {
      return <p className="session-footer">Already have an account? {this.props.linkToForm}.</p>
      } else {
      return <p className="session-footer">Don't have an account? {this.props.linkToForm}.</p>
      }
    }

  render() {
    return (
      <div>
        <div className="session-form">
          {this.formHeader()}
          <Link to="/" className="close-form">&times;</Link>
          <form
            className={this.props.formClass} onSubmit={this.handleSubmit}>
            <div className="session-form-inputs">
              {this.emailField()}

              <label htmlFor="session-username">Username</label>
              <input
              type="text"
              id="session-username"
              onChange={this.update('username')} />

              <label htmlFor="session-password">Password</label>
              <input
              type="password"
              onChange={this.update('password')} />

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
        <div className="session-screen"/>
      </div>
    );
  }

}

export default SessionForm;
