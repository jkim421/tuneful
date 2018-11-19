import React from 'react';
import { Link } from 'react-router-dom';
import SongItemContainer from './song_item_container';
import Discography from './discography';

class AlbumPage extends React.Component {
  constructor(props) {
    super(props);
    this.handleCollection = this.handleCollection.bind(this);
  }

  componentDidMount() {
    const albumId = this.props.match.params.albumId;
    this.props.fetchAlbum(albumId);
    this.props.fetchSongs(albumId);
    this.props.fetchArtistAlbums(this.props.album.artist_id);
  }

  componentDidUpdate(prevProps) {
    const albumId = this.props.match.params.albumId;
    if (this.props.match.params.albumId !== prevProps.match.params.albumId) {
      this.props.fetchSongs(albumId);
    }
  }

  showReleaseDate() {
    if (!!this.props.album.release_date) {
      return (
        <p className="album-release-date">
          released RELEASE DATE
        </p>
      )
    } else {
      return <p>"no release date"</p>
    }
  }

  albumTracks(songs) {
    if (songs.length > 0) {
      return songs.map( (song) => <SongItemContainer key={song.id} song={song}/>)
    } else {
      return null
    }
  }

  handleCollection(e) {
    const collInfo = {
      album_id: this.props.album.id,
      user_id: this.props.currentUser,
    };
    if (this.props.userCollection.includes(this.props.album.id)) {
      this.props.removeCollection(collInfo);
    } else {
      this.props.addCollection(collInfo);
    }
  }

  collectionButton() {
    if (!!this.props.currentUser) {
      return (
        <>
          {this.props.userCollection.includes(this.props.album.id)
            ? <i className="fas fa-heart album-collection-icon"></i>
            : <i className="far fa-heart album-collection-icon"></i>}
          <button
            className="album-collection-btn"
            onClick={ this.handleCollection }>
            { this.props.userCollection.includes(this.props.album.id)
              ? "remove from collection" : "add to collection" }
          </button>
        </>
      );
    } else {
      return null;
    }
  }

  render() {
    return (
      <main className="show-page">
        <section className="show-body">
          <div className="show-cover-img"/>
          <section className="show-content">
            <div className="show-details">
              <div className="album-details">
                <div className="album-byline">
                  <p className="album-byline-title">{this.props.album.title || ""}</p>
                  <div className="album-byline-artist">
                    by&nbsp;
                    <Link to="/" className="album-byline-link">{this.props.album.artist || ""}</Link>
                    <br/>
                    <Link to="/" className="album-byline-link album-byline-genre">{this.props.album.genre || ""}</Link>
                  </div>
                </div>
                <div className="player-container">
                  SONG PLAYER
                </div>
                <div className="album-download">
                  DOWNLOAD ALBUM
                </div>
                <div className="album-tracks">
                  <ul className="album-song-list">
                    {this.albumTracks(this.props.songs)}
                  </ul>
                </div>
                {this.showReleaseDate()}
              </div>
              <div className="album-cover">
                <div className="album-cover-img" />
                <div className="album-collection">
                  { this.collectionButton() }
                </div>
              </div>
            </div>
            <aside className="show-sidebar">
              <div className="artist-side-img"/>
              <p className="artist-side-name">{this.props.artist.name || ""}</p>
              <p className="artist-side-loc">{this.props.artist.location || ""}</p>
              <button className="artist-follow-btn">Follow</button>
              <p className="artist-description">{this.props.artist.bio || ""}</p>
                <Discography
                  albumId={this.props.match.params.albumId}
                  discog={this.props.discog}/>
            </aside>
          </section>
        </section>
      </main>

    )
  }

}

export default AlbumPage;
