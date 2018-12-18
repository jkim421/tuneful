import React from 'react';
import { Redirect, Link } from 'react-router-dom';
import SongItem from './song_item';

class UploadForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      artistId: this.props.artist.id,
      albumName: this.props.artist.name,
      albumDescription: this.props.artist.location,
      songs: {},
      songCount: 1,
      songInputs: [],
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.showEditForm = this.showEditForm.bind(this);
    this.songItem = this.songItem.bind(this);
    this.addSong = this.addSong.bind(this);
    this.removeSong = this.removeSong.bind(this);
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

  songItem(num) {
    return (
      <div className="new-album-song" key={num}>
        <label htmlFor={`song-title-${num}`}>Title</label>
        <input
          type="text"
          id={`song-title-${num}`}
          className="input-field song-title-input"
          onChange={this.update('')}
          value={this.state.name} />
        <label htmlFor="new-song-tracknum">Track #</label>
        <input
          type="text"
          id="new-song-tracknum"
          className="input-field tracknum-input"
          onChange={this.update()}
          value={num} />
        <label htmlFor="new-song-file">File</label>
        <input
          type="file"
          accept="audio/*"
          id="new-song-file"
          className="input-field album-file-input"
          onChange={this.update('')}/>
        <div
          className="remove-song-btn"
          onClick={this.removeSong}>x</div>
      </div>
    )
  }

  addSong() {
    const newSongItem = this.songItem(this.state.songCount + 1);
    debugger
    this.setState( prevState => (
      {
        songInputs: [...prevState.songInputs, newSongItem],
        songCount: this.state.songCount + 1,
      })
    );
  }

  removeSong() {
    const count = this.state.songCount;
    debugger
    this.setState( prevState => (
      {
        songInputs: [...prevState.songInputs.slice(0, -1)],
        songCount: count - 1,
      })
    );
  }

  render() {
    return (
      <div className="show-page">
        <div className="show-body user-edit-page">
          <div className="album-upload-container">
            <form
              className={`update-form`} onSubmit={this.handleSubmit}>
              <div className="user-form-inputs">
                <p className="new-album-header">Album Info</p>
                <div className="new-album-divider"></div>
                <p className="upload-album-field">
                  <label htmlFor="new-album-name">Name</label>
                  <input
                    type="text"
                    id="new-album-name"
                    className="input-field"
                    onChange={this.update('albumName')}
                    value={this.state.name} />
                </p>
                <p className="upload-album-field">
                  <label htmlFor="new-album-description">Description</label>
                  <input
                    type="text"
                    id="new-album-description"
                    className="input-field"
                    onChange={this.update('albumDescription')}
                    value={this.state.name} />
                </p>
              </div>
              <p className="new-album-header">Songs</p>
              <div className="new-album-divider"></div>
              <div id="new-album-songlist" className="new-album-songs">
                <div className="new-album-song" key="1">
                  <label htmlFor="song-title-1">Title</label>
                  <input
                    type="text"
                    id="song-title-1"
                    className="input-field song-title-input"
                    onChange={this.update('')}
                    value={this.state.name} />
                  <label htmlFor="new-song-tracknum">Track #</label>
                  <input
                    type="text"
                    id="new-song-tracknum"
                    className="input-field tracknum-input"
                    onChange={this.update()}
                    value="1" />
                  <label htmlFor="new-song-file">File</label>
                  <input
                    type="file"
                    accept="audio/*"
                    id="new-song-file"
                    className="input-field album-file-input"
                    onChange={this.update('')}/>
                </div>
                {this.state.songInputs}
              </div>
              <div className="add-song-container">
                <div
                  className="add-song-btn"
                  onClick={this.addSong}
                  >Add Song</div>
              </div>
              <input
                type="submit"
                className="album-upload-btn"
                value="Upload"/>
            </form>
          </div>
        </div>
      </div>
    );
  }

}

export default UploadForm;
