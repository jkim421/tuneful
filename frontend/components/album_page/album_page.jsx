import React from 'react';
import { Link } from 'react-router-dom';

class AlbumPage extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    debugger
    this.props.fetchAlbum(this.props.match.params.albumId);
    this.props.fetchArtist(this.props.album.artist_id);
  }

  showReleaseDate() {
    if (!!this.props.album.release_date) {
      return (
        <p className="album-release-date">
          released RELEASE DATE
        </p>
      )
    } else {
      return null
    }
  }

  render() {
    debugger
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
                    <li className="album-track-item">SONG 1</li>
                    <li className="album-track-item">SONG 2</li>
                    <li className="album-track-item">SONG 3</li>
                    <li className="album-track-item">SONG 4</li>
                    <li className="album-track-item">SONG 5</li>
                  </ul>
                </div>
                {this.releaseDate}
              </div>
              <div className="album-cover">
                <div className="album-cover-img" />
                <div className="album-collection">
                  <i className="far fa-heart album-collection-icon"></i>
                  <button className="album-collection-btn">add to collection</button>
                </div>
              </div>
            </div>
            <aside className="show-sidebar">
              <div className="artist-side-img"/>
              <p className="artist-side-name">ARTIST NAME</p>
              <p className="artist-side-loc">ARTIST LOCATION</p>
              <button className="artist-follow-btn">Follow</button>
              <p className="artist-description">DESCRIPTION</p>
              <div className="side-discog">
                <p className="discog-label">discography</p>
                <ul className="side-discog-list">
                  <li className="side-discog-item">
                    <Link to="/" className="side-discog-img" />
                    <Link to="/" className="side-discog-title">ALBUM TITLE</Link>
                    <p className="side-discog-date">RELEASE DATE</p>
                  </li>
                  <li className="side-discog-item">
                    <Link to="/" className="side-discog-img" />
                    <Link to="/" className="side-discog-title">ALBUM TITLE</Link>
                    <p className="side-discog-date">RELEASE DATE</p>
                  </li>
                  <li className="side-discog-item">
                    <Link to="/" className="side-discog-img" />
                    <Link to="/" className="side-discog-title">ALBUM TITLE</Link>
                    <p className="side-discog-date">RELEASE DATE</p>
                  </li>
                </ul>
              </div>
            </aside>
          </section>
        </section>
      </main>

    )
  }

}

export default AlbumPage;
