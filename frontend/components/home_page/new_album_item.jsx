import React from 'react';
import { Link } from 'react-router-dom';

class NewAlbumItem extends React.Component {

  onCollection(e) {
    e.target.toggleClass()
  }

  displayCollect(e) {
    const addButton = document.getElementsByClassName("new-album-collection");
  }

  collectionButton() {
    if (!!this.props.currentUser) {
      return (
        <button
          className="new-album-collection uncollected">
          add to collection
        </button>
      );
    } else {
      return null;
    }
  }

  render() {
    const album = this.props.album
    return (
      <li className="new-album-item" key={album.id}>
        <div
          className="new-album-show"
          ref={ (li) => this.newAlbum = li }
          onMouseOver={this.displayCollect}>
          <div className="new-album-cover">
            <Link className="new-album-link" to={`/album/${album.id}`} key={album.id} />
          </div>
          <div className="new-album-details" onMouseOver={this.displayCollect}>
            <Link className="new-album-byline-link" to={`/album/${album.id}`}>
              <p className="new-album-byline">{album.title}<br/>by {album.artist}</p>
            </Link>
            <p className="new-album-genre">{album.genre.toLowerCase()}</p>
            <p className="new-album-description">{album.description}</p>
            { this.collectionButton() }
          </div>
        </div>
      </li>
    )
  }

};

export default NewAlbumItem;
