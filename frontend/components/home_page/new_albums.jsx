import React from 'react';
import { Link } from 'react-router-dom';

class NewAlbums extends React.Component {

  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getNewAlbums()
  }

  onCollection(e) {
    e.target.toggleClass()
  }

  displayCollect(e) {
  }

  showNewAlbums(albums) {
    if (this.props.albums.length > 0) {
      const albumDetails = albums.map( (album) => {
        return (
          <li className="new-album-item" key={album.id}>
            <div className="new-album-show">
              <div className="new-album-cover">
                <Link className="new-album-link" to={`/album/${album.id}`} key={album.id} />
              </div>
              <div className="new-album-details" onMouseOver={this.displayCollect}>
                <Link className="new-album-byline-link" to={`/album/${album.id}`}>
                  <p className="new-album-byline">{album.title}<br/>by {album.artist}</p>
                </Link>
                <p className="new-album-genre">{album.genre.toLowerCase()}</p>
                <p className="new-album-description">{album.description}</p>
                <button
                  className="new-album-collection uncollected">
                  add to collection
                </button>
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
