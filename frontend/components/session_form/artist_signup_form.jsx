import React from 'react';
import { Redirect, Link } from 'react-router-dom';

class ArtistSignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      username: '',
      password: '',
      name: '',
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
          <h1>Sign up as an artist</h1>
          <Link to="/" className="close-form">&times;</Link>
          <form
            className={this.props.formClass} onSubmit={this.handleSubmit}>
            <div className="session-form-inputs">
              <label htmlFor="session-email">Email</label>
              <input
                type="text"
                className="input-field"
                onChange={this.update('email')} />
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

export default ArtistSignupForm;
