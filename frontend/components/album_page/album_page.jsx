import React from 'react';
import { Link } from 'react-router-dom';

class AlbumPage extends React.Component {
  constructor(props) {
    super(props);
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
                  <p className="album-byline-title">ALBUM NAME</p>
                  <div className="album-byline-artist">
                    by&nbsp;
                    <Link to="/" className="album-byline-link">ALBUM ARTIST</Link>
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
                <p className="album-release-date">
                  released RELEASE DATE
                </p>
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
