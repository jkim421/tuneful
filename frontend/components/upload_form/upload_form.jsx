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
      songs: [],
      songFiles: [],
      photo: null,
    };
    this.trackOrder=[];
    this.deletedTracks = [];
    this.songEles = [];
    this.handleSubmit = this.handleSubmit.bind(this);
    this.showEditForm = this.showEditForm.bind(this);
    this.addSong = this.addSong.bind(this);
    this.createSong = this.createSong.bind(this);
    this.updateSong = this.updateSong.bind(this);
    this.handleFile = this.handleFile.bind(this);
    this.handlePhoto = this.handlePhoto.bind(this);
    this.removeSong = this.removeSong.bind(this);
    this.redirectPage = this.redirectPage.bind(this);
    this.renderGenreOptions = this.renderGenreOptions.bind(this);
  }

  componentDidMount() {
    this.props.getGenres();
  }

  redirectPage(res) {
    const albumId = Object.keys(res.albums)[0]
    this.props.history.push(`/albums/${albumId}`);
  }

  handleSubmit(e) {
    e.preventDefault();
    const one = 1;
    const albumData = new FormData();
    const {albumName, albumDescription, albumGenre, songs, songFiles, photo} = this.state;

    const songsObj = {};
    songs.forEach( song => songsObj[song.trackNum] = song);

    albumData.append("album[artist_id]", this.props.artist.id);
    albumData.append("album[title]", albumName);
    albumData.append("album[description]", albumDescription);
    albumData.append("album[genre_id]", albumGenre);
    albumData.append("album[songs]", JSON.stringify(songsObj));
    albumData.append("album[photo]", photo);
    songFiles.forEach( file => albumData.append("album[song_files][]", file))
    debugger
    this.props.sendAlbum(albumData).then(res => this.redirectPage(res));
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

  updateSong() {
    const trackOrder = this.trackOrder;
    return (e, idx, field) => {
      let targetSong = this.state.songs[idx];
      debugger
      targetSong = merge({}, targetSong, {[field]: e.target.value});
      debugger
      const newSongs =
        this.state.songs.slice(0, idx)
        .concat(targetSong)
        .concat(this.state.songs.slice(idx + 1))
      debugger
      this.setState({
        songs: newSongs,
      });
      if (field === "trackNum") {
        this.trackOrder[idx] = (e.target.value)
      }
    };
  }

  handleFile() {
    return (e, idx) => {
      if (e.currentTarget.files[0]) {
        const newFiles =
        this.state.songFiles.slice(0, idx)
          .concat([e.currentTarget.files[0]])
          .concat(this.state.songFiles.slice(idx + 1))
        this.setState(
          {
            songFiles: newFiles,
          }
        );
      }
    };
  }

  handlePhoto() {
    return (e) => {
      if (e.currentTarget.files[0]) {
        this.setState(
          {
            photo: e.currentTarget.files[0]
          }
        );
      }
    };
  }

  addSong() {
    const newCount = this.state.songCount + 1
    let newSongNum = newCount;

    debugger

    if (this.deletedTracks.length > 0) {
      newSongNum = this.deletedTracks[0];
      this.deletedTracks.shift(1);
    };

    this.trackOrder.push(`${newSongNum}`);

    const newSongObj = {
        title: "",
        trackNum: `${newSongNum}`,
      };

    this.setState(
      {
        songCount: newCount,
        songs: this.state.songs.concat([newSongObj]),
      }
    );

    this.songEles.push(this.createSong(newSongNum))
  }

  removeSong(idx, trackNum) {
    this.deletedTracks.push(trackNum);
    this.deletedTracks.sort();

    this.trackOrder =
      this.trackOrder.slice(0, idx)
      .concat(this.trackOrder.slice(idx + 1));

    const updatedFiles =
      this.state.songFiles.slice(0, idx)
      .concat(this.state.songFiles.slice(idx + 1));

    const updatedSongs =
      this.state.songs.slice(0, idx)
      .concat(this.state.songs.slice(idx+1));

    this.setState(
      {
        songCount: this.state.songCount - 1,
        songs: updatedSongs,
        songFiles: updatedFiles,
      }
    );
  }

  renderSongInputs() {
    const songs = [];
    for (let i = 0; i < this.state.songCount; i++) {
      songs.push(
        <SongItem
          key={i}
          idx={i}
          song={this.state.songs[i]}
          file={this.state.songFiles[i]}
          updateSong={this.updateSong()}
          handleFile={this.handleFile()}
          removeSong={this.removeSong} />
      )
    }
    return songs;
  }

  createSong(num) {
    return (
        <SongItem
          key={i}
          idx={i}
          song={this.state.songs[i]}
          updateSong={this.updateSong()}
          handleFile={this.handleFile()}
          removeSong={this.removeSong} />
    )
  }

  renderGenreOptions() {
    const genres = Object.keys(this.props.genres);
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
                <p className="upload-album-field">
                  <label htmlFor="new-album-cover">Cover Photo</label>
                    <input
                      type="file"
                      accept="image/*"
                      className="input-field album-file-input"
                      onChange={this.handlePhoto()} />
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
