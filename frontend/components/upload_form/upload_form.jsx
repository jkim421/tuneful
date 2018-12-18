import React from 'react';
import { Redirect, Link } from 'react-router-dom';
import SongItem from './song_item';
import merge from 'lodash/merge';

class UploadForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      artistId: this.props.artist.id,
      albumName: this.props.artist.name,
      albumDescription: this.props.artist.location,
      songs: {1: {title: "", trackNum: 1, file: ""}},
      songCount: 1,
    };
    this.songInputs = [];
    this.handleSubmit = this.handleSubmit.bind(this);
    this.showEditForm = this.showEditForm.bind(this);
    this.songItem = this.songItem.bind(this);
    this.addSong = this.addSong.bind(this);
    this.addSongEle = this.addSongEle.bind(this);
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

  updateSong(num, field) {
    debugger
    return (
      (e) => {
        debugger
        this.setState({
          songs:
          { [num]:
            { [field]: e.target.value }
          }
        })
      }
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
    debugger
    return (
      <div className="new-album-song" key={num}>
        <label htmlFor={`song-title-${num}`}>Title</label>
        <input
          type="text"
          id={`song-title-${num}`}
          className="input-field song-title-input"
          onChange={this.update(num, "title")}
          value={this.state.songs[num].title} />
        <label htmlFor={`song-tracknum-${num}`}>Track #</label>
        <input
          type="text"
          id={`song-tracknum-${num}`}
          className="input-field tracknum-input"
          onChange={this.update(num, "trackNum")}
          value={num} />
        <label htmlFor={`song-file-${num}`}>File</label>
        <input
          type="file"
          accept="audio/*"
          id={`song-file-${num}`}
          className="input-field album-file-input"
          onChange={this.update(num, "file")}
          value={this.state.songs[num].file} />
        <div
          className="remove-song-btn"
          onClick={this.removeSong}>x</div>
      </div>
    )
  }

  addSong() {
    const songNum = this.state.songCount + 1;
    const newSongObj = {
      [songNum]: {title: "", trackNum: songNum, file: ""}
    };
    debugger
    this.setState( prevState => (
      {
        songs: merge(this.state.songs, newSongObj),
      }), () => this.addSongEle(songNum)
    );
  }

  addSongEle(num) {
    debugger
    const newSongItem = this.songItem(this.state.songCount);
    debugger
    this.songInputs.push(newSongItem);
    this.setState({songCount: num})
  }

  removeSong() {
    const count = this.state.songCount;
    const updatedSongs = merge({}, this.state.songs);
    delete updatedSongs[count];
    this.songInputs = this.songInputs.slice(0, -1);
    this.setState( prevState => (
      {
        songs: updatedSongs,
        songCount: count - 1,
      })
    );
  }

  render() {
    debugger
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
                    value={this.state.albumName} />
                </p>
                <p className="upload-album-field">
                  <label htmlFor="new-album-description">Description</label>
                  <input
                    type="text"
                    id="new-album-description"
                    className="input-field"
                    onChange={this.update('albumDescription')}
                    value={this.state.albumDescription} />
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
                    onChange={this.updateSong(1, "title")}
                    value={this.state.songs[1].title} />
                  <label htmlFor="song-tracknum-1">Track #</label>
                  <input
                    type="text"
                    id="song-tracknum-1"
                    className="input-field tracknum-input"
                    onChange={this.update(1, "trackNum")}
                    value="1" />
                  <label htmlFor="song-file-1">File</label>
                  <input
                    type="file"
                    accept="audio/*"
                    id="song-file-1"
                    className="input-field album-file-input"
                    onChange={this.update(1, "file")}
                    value={this.state.songs[1].file} />
                </div>
                <div>
                  {this.songInputs}
                </div>
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
