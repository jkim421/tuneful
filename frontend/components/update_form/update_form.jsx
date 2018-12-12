import React from 'react';
import { Redirect, Link } from 'react-router-dom';

class UpdateForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      id: this.props.artist.id,
      name: this.props.artist.name,
      location: this.props.artist.location,
      bio: this.props.artist.bio,
      website: this.props.artist.website,
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillUnmount(e) {
    // this.props.clearErrors();
  }

  handleSubmit(e) {
    e.preventDefault();
    // this.props.processForm(this.state).then(this.props.closeModal);
    this.props.processForm(this.state);
  }

  update(field) {
    return (
      (e) => this.setState({[field]: e.target.value})
    );
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
              onChange={this.update('name')}
              value={this.state.name} />
            <p className="session-errors">
              {this.props.nameError}
            </p>

            <label htmlFor="user-location">Location</label>
            <input
              type="text"
              id="user-location"
              className="input-field"
              onChange={this.update('location')}
              value={this.state.location} />
            <p className="session-errors">
              {this.props.emailError}
            </p>

            <label htmlFor="user-bio">Bio</label>
            <textarea
              id="user-bio"
              className="input-field"
              onChange={this.update('bio')}
              value={this.state.bio} />
            <p className="session-errors">
              {this.props.emailError}
            </p>

            <label htmlFor="user-website">Website</label>
            <input
              type="text"
              id="user-web site"
              className="input-field"
              onChange={this.update('website')}
              value={this.state.website} />
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
