import React from 'react';
import { Redirect, Link } from 'react-router-dom';

class UploadForm extends React.Component {
  constructor(props) {
    super(props);
    debugger
    this.state = {
      id: this.props.artist.id,
      name: this.props.artist.name,
      location: this.props.artist.location,
      bio: this.props.artist.bio,
      website: this.props.artist.website,
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.showEditForm = this.showEditForm.bind(this);
  }

  componentWillUnmount(e) {
    // this.props.clearErrors();
  }

  handleSubmit(e) {
    e.preventDefault();
    const updatedArtist = {
      name: this.state.name,
      location: this.state.location,
      bio: this.state.bio,
      website: this.state.website,
    }
    this.props.processForm(this.state);
  }

  update(field) {
    return (
      (e) => this.setState({[field]: e.target.value})
    );
  }

  showEditForm() {
    if (this.state.formClass === "hidden-form") {
      this.setState({
        formClass: "",
        buttonText: "Close"
      })
    } else {
      this.setState({
        formClass: "hidden-form",
        buttonText: "Update Profile"
      })
    }
  }

  render() {
    return (
      <div className="show-page">
        <div className="show-body user-edit-page">
          <div className="user-edit-container">
            <form
              className={`update-form`} onSubmit={this.handleSubmit}>
              <div className="user-form-inputs">
                <p className="update-form-field">
                  <label htmlFor="user-band-name">Band Name</label>
                  <input
                    type="text"
                    id="user-band-name"
                    className="input-field"
                    onChange={this.update('name')}
                    value={this.state.name} />
                </p>
                <p className="session-errors">
                  {this.props.nameError}
                </p>

                <p className="update-form-field">
                  <label htmlFor="user-location">Location</label>
                  <input
                    type="text"
                    id="user-location"
                    className="input-field"
                    onChange={this.update('location')}
                    value={this.state.location} />
                </p>
                <p className="session-errors">
                  {this.props.emailError}
                </p>

                <p className="update-form-field">
                  <label htmlFor="user-bio">Bio</label>
                  <textarea
                    id="user-bio"
                    className="input-field"
                    onChange={this.update('bio')}
                    value={this.state.bio} />
                </p>
                <p className="session-errors">
                  {this.props.emailError}
                </p>

                <p className="update-form-field">
                  <label htmlFor="user-website">Website</label>
                  <input
                    type="text"
                    id="user-web site"
                    className="input-field"
                    onChange={this.update('website')}
                    value={this.state.website} />
                </p>
                <p className="session-errors">
                  {this.props.emailError}
                </p>

                <input
                  type="submit"
                  value="Update"/>
              </div>
            </form>
          </div>
        </div>
      </div>
    );
  }

}

export default UpdateForm;
