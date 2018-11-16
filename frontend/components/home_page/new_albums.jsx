import React from 'react';
import { Link } from 'react-router-dom';

class NewAlbums extends React.Component {

  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getNewAlbums()
  }

  showNewAlbums(albums) {
    if (this.props.albums.length > 0) {
      const albumDetails = albums.map( (album) => {
        return (
          <li className="new-album-item">
            <div className="new-album-show">
              <div className="new-album-cover">
                <Link className="new-album-link" to={`/album/${album.id}`} key={album.id}>
                ALBUM COVER
                </Link>
              </div>
              <div className="new-album-details">
                <p className="new-album-title">{album.title}</p>
                <p className="new-album-band">{album.artist}</p>
                <p className="new-album-genre">{album.genre}</p>
                <p className="new-album-description">{album.description}</p>
              </div>
            </div>
          </li>
        )
      })
      return albumDetails;
    } else {
      return null
    }
  }


  render() {

    let newAlbums;

    if (this.props.albums.length > 0) {
      newAlbums = this.props.albums;
    }

    return (
      <section className="new-albums-container">
        <div className="home-separator-text">NEW AND NOTABLE</div>
          <ul className="new-albums-list">
            {this.showNewAlbums(newAlbums)}
          </ul>
      </section>
    );
  }
}

export default NewAlbums;
