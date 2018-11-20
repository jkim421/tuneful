import React from 'react';
import { Link } from 'react-router-dom';
import SongItemContainer from './song_item_container';
import SideDiscography from '../discography/side_discography';

class AlbumPage extends React.Component {
  constructor(props) {
    super(props);
    this.handleCollection = this.handleCollection.bind(this);
    this.handleFollow = this.handleFollow.bind(this);
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
      return <p className="album-release-date">"no release date"</p>
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

  handleFollow(e) {
    const followInfo = {
      artist_id: this.props.album.artist_id,
      user_id: this.props.currentUser,
    };
    if (this.props.userFollows.includes(this.props.album.artist_id)) {
      this.props.removeFollow(followInfo);
    } else {
      this.props.addFollow(followInfo);
    }
  }

  followButton() {
    if (!!this.props.currentUser) {
      return (
        <>
          <button
            className="artist-follow-btn"
            onClick={ this.handleFollow }>
            { this.props.userFollows.includes(this.props.album.artist_id)
              ? "Following" : "Follow" }
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
          <Link to={`/artists/${this.props.artist.id}`} className="show-cover-img"/>
          <section className="show-content">
            <div className="show-details">
              <div className="album-details">
                <div className="album-byline">
                  <p className="album-byline-title">{this.props.album.title || ""}</p>
                  <div className="album-byline-artist">
                    by&nbsp;
                    <Link to={`/artists/${this.props.album.artist_id}`} className="album-byline-link">{this.props.album.artist || ""}</Link>
                    <br/>
                    <Link to="/" className="album-byline-link album-byline-genre">{this.props.album.genre || ""}</Link>
                  </div>
                </div>
                <div className="player-container">
                  SONG PLAYER
                </div>
                <div className="album-download">
                  Download Album
                </div>
                <div className="album-tracks">
                  <ul className="album-song-list">
                    {this.albumTracks(this.props.songs)}
                  </ul>
                </div>
                <div className="album-description">
                  {this.props.album.description}
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
              <Link className="artist-side-img" to={`/artists/${this.props.album.artist_id}`}/>
              <p className="artist-side-name">{this.props.artist.name || ""}</p>
              <p className="artist-side-loc">{this.props.artist.location || ""}</p>
              { this.followButton() }
              <p className="artist-description">{this.props.artist.bio || ""}</p>
                <SideDiscography
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
