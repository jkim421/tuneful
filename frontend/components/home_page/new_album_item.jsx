import React from 'react';
import { Link } from 'react-router-dom';

class NewAlbumItem extends React.Component {

  render() {
    const album = this.props.album
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
  }

};

export default NewAlbumItem;
