import React from 'react';
import { Redirect, Link } from 'react-router-dom';

class UploadForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      artistId: this.props.artist.id,
      albumName: this.props.artist.name,
      albumDescription: this.props.artist.location,
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
        <div className="show-body upload-page">
          <div className="user-edit-container">
            <form
              className={`update-form`} onSubmit={this.handleSubmit}>
              <div className="new-album-inputs">
                <p className="update-form-field">
                  <label htmlFor="new-album-name">Album Name</label>
                  <input
                    type="text"
                    id="new-album-name"
                    className="input-field"
                    onChange={this.update('albumName')}
                    value={this.state.name} />
                </p>
                <p className="update-form-field">
                  <label htmlFor="new-album-description">Album Description</label>
                  <input
                    type="text"
                    id="new-album-description"
                    className="input-field"
                    onChange={this.update('albumDescription')}
                    value={this.state.name} />
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

export default UploadForm;
