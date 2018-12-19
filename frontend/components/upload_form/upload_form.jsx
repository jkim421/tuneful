import React from 'react';
import { Redirect, Link } from 'react-router-dom';
import SongItem from './song_item';
import GenreItem from './genre_item';
import merge from 'lodash/merge';

class UploadForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      artistId: this.props.artist.id,
      albumName: "",
      albumDescription: "",
      albumGenre: null,
      songCount: 0,
      songs: {},
      songFiles: [],
    };
    this.trackOrder=[];
    this.handleSubmit = this.handleSubmit.bind(this);
    this.showEditForm = this.showEditForm.bind(this);
    this.addSong = this.addSong.bind(this);
    this.updateSong = this.updateSong.bind(this);
    this.handleFile = this.handleFile.bind(this);
    this.removeSong = this.removeSong.bind(this);
    this.renderGenreOptions = this.renderGenreOptions.bind(this);
  }

  componentDidMount() {
    this.props.getGenres();
  }

  handleSubmit(e) {
    e.preventDefault();
    const one = 1;
    const albumData = new FormData();
    const {albumName, albumDescription, albumGenre, songs, songFiles} = this.state;
    albumData.append("album[artist_id]", this.props.artist.id);
    albumData.append("album[title]", albumName);
    albumData.append("album[description]", albumDescription);
    albumData.append("album[genre_id]", albumGenre);
    albumData.append("album[songs]", JSON.stringify(songs));
    songFiles.forEach( file => albumData.append("album[songFiles][]", file))
    debugger
    this.props.sendAlbum(albumData);
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

  update(field) {
    return (
      (e) => this.setState({[field]: e.target.value})
    );
  }

  updateSong(num, field) {
    const trackOrder = this.trackOrder;
    return (e) => {
      this.setState(merge(this.state, {
      songs:
        { [num]:
          { [field]: e.target.value }
        }
      }));
      if (field === "trackNum") {
        this.trackOrder[num - 1] = (e.target.value)
      }
    };
  }

  handleFile(num) {
    return (e) => {
      if (e.currentTarget.files[0]) {
        // const songFile = merge({}, {[num]: e.currentTarget.files[0]});
        // const updatedFiles = merge({}, this.state.songFiles, songFile)
        this.setState(
          {
            songFiles: this.state.songFiles.concat([e.currentTarget.files[0]])
          }
        );
      }
    };
  }

  addSong() {
    const newCount = this.state.songCount + 1
    this.trackOrder.push(`${newCount}`);
    const newSongObj = {
      [newCount]: {
        title: "",
        trackNum: `${newCount}`,
      }
    };
    this.setState(
      {
        songCount: newCount,
        songs: merge(this.state.songs, newSongObj)
      }
    );
  }

  removeSong() {
    this.trackOrder = this.trackOrder.slice(0, -1);
    const count = this.state.songCount;
    const updatedSongs = merge({}, this.state.songs);
    const updatedFiles = merge({}, this.state.songFiles);
    delete updatedSongs[count];
    delete updatedFiles[count];
    this.setState(
      {
        songCount: count - 1,
        songs: updatedSongs,
        songFiles: updatedFiles,
      }
    );
  }

  renderSongInputs() {
    const songs = [];
    for (let i = 1; i <= this.state.songCount; i++) {
      songs.push(
        <SongItem
          key={i}
          num={i}
          last={i === this.trackOrder.length}
          trackNum = {`${this.trackOrder[i - 1]}`}
          updateSong={(num, field) => this.updateSong(num, field)}
          handleFile={(num) => this.handleFile(num)}
          removeSong={this.removeSong} />
      )
    }
    return songs;
  }

  renderGenreOptions() {
    const genres = Object.keys(this.props.genres);
    debugger
    const genreEles = genres.map( id =>
      <GenreItem
        key={parseInt(id)}
        value={parseInt(id)}
        name={this.props.genres[id]}/>
    )
    return genreEles;
  }

  render() {
    debugger
    return (
      <div className="show-page">
        <div className="show-body user-edit-page">
          <div className="album-upload-container">
            <form
              id="song-form"
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
                    onChange={this.update('albumName')} />
                </p>
                <p className="upload-album-field">
                  <label htmlFor="new-album-description">Description</label>
                  <input
                    type="text"
                    id="new-album-description"
                    className="input-field"
                    onChange={this.update('albumDescription')} />
                </p>
                <p className="upload-album-field">
                  <label htmlFor="new-album-genre">Genre</label>
                  <select
                    id="new-album-genre"
                    className="input-field"
                    onChange={this.update('albumGenre')}>
                    <option>Select Genre</option>
                    {this.renderGenreOptions()}
                  </select>
                </p>
              </div>
              <p className="new-album-header">Songs</p>
              <div className="new-album-divider"></div>
              <div id="new-album-songlist" className="new-album-songs">
                <div>
                  {this.renderSongInputs()}
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
