import React from 'react';
import { Link } from 'react-router-dom';

class Explore extends React.Component {

  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getNewAlbums()
  }

  render() {
    const albums = this.props.albums.reverse();
    return (
      <section className="new-albums-container">
        <div className="home-separator-text">NEW AND NOTABLE</div>
          <ul className="new-albums-list">
            {albums.map( (album) => <NewAlbumItemContainer key={album.id} album={album}/>)}
          </ul>
      </section>
    );
  }
}

export default Explore;
