import React from 'react';
import { Link } from 'react-router-dom';

class NewAlbumItem extends React.Component {

  constructor(props) {
    super(props);
    this.state = { collected: false }
  }

  handleCollection() {
    this.props.handleCollection();
  }

  collectionButton() {
    if (!!this.props.currentUser) {
      return (
        <button
          className="new-album-collection hidden-collect"
          onClick={ this.handleCollection }>
          { this.props.userCollection.includes(this.props.album.id)
            ? "remove from collection" : "add to collection" }
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
