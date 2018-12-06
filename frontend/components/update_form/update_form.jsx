import React from 'react';
import { Redirect, Link } from 'react-router-dom';

class UpdateForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: "",
      location: "",
      bio: "",
      website: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillUnmount(e) {
    // this.props.clearErrors();
  }

  handleSubmit(e) {
    debugger
    e.preventDefault();
    // this.props.processForm(this.state).then(this.props.closeModal);
    debugger
    this.props.processForm(this.state);
  }

  update(field) {
    return (
      (e) => this.setState({[field]: e.target.value})
    );
  }

  emailField() {
    if (this.props.formType === "Log in") {
      return <div/>
    } else {
      return (
        <>
          <label htmlFor="session-email">Email</label>
          <input
            type="email"
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

  render() {
    return (
      <div className="update-form">
        <form
          className={"update-form"} onSubmit={this.handleSubmit}>
          <div className="user-form-inputs">
            <label htmlFor="user-band-name">Band Name</label>
            <input
              type="text"
              id="user-band-name"
              className="input-field"
              onChange={this.update('name')} />
            <p className="session-errors">
              {this.props.nameError}
            </p>

            <label htmlFor="user-location">Location</label>
            <input
              type="text"
              id="user-location"
              className="input-field"
              onChange={this.update('name')} />
            <p className="session-errors">
              {this.props.emailError}
            </p>

            <label htmlFor="user-bio">Bio</label>
            <input
              type="text"
              id="user-bio"
              className="input-field"
              onChange={this.update('name')} />
            <p className="session-errors">
              {this.props.emailError}
            </p>

            <label htmlFor="user-website">Website</label>
            <input
              type="text"
              id="user-web site"
              className="input-field"
              onChange={this.update('name')} />
            <p className="session-errors">
              {this.props.emailError}
            </p>

            <input
            type="submit"
            value="Update"/>
          </div>
        </form>
      </div>
    );
  }

}

export default UpdateForm;
