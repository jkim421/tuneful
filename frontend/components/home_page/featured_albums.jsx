import React from 'react';
import { Link } from 'react-router-dom';

class FeaturedAlbums extends React.Component {

  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getFeaturedAlbums()
  }

  backgroundImage(album) {
    return (
      {
        backgroundImage: `url(${album.photo_url})`,
        backgroundPosition: "center"
      }
    )
  }

  showMain(album) {
    if (this.props.albums.length > 0) {
      return (
        <Link
          className="large-feature-link"
          to={`/albums/${album.id}`}
          style={ this.backgroundImage(album) }>
          <div className="large-feature-details">
            <p className="large-feature-title">{album.title}</p>
            <p className="large-feature-band">{album.artist}</p>
          </div>
        </Link>
      )
    } else {
      return null
    }
  }

  showSide(albums) {
    if (this.props.albums.length > 0) {
      const albumDetails = albums.map( (album) => {
        return (
          <li className="small-feature-wrapper" key={album.id}>
            <Link
              className="small-feature-link"
              to={`/albums/${album.id}`}
              style={ this.backgroundImage(album) }>>
              <div className="small-feature-details">
                <p className="small-feature-title">{album.title}</p>
                <p className="small-feature-band">{album.artist}</p>
              </div>
            </Link>
          </li>
        )
      })
      return albumDetails;
    } else {
      return null
    }
  }


  render() {

    let features, firstFeature, sideFeatures;

    if (this.props.albums.length > 0) {
      features = this.props.albums;
      firstFeature = features.pop(1);
      sideFeatures = features.slice(-3);
    }
    return (
      <div className="features-container">
        <main className="featured-albums">
          <section className="main-feature">
            {this.showMain(firstFeature)}
          </section>
          <ul className="side-features">
            {this.showSide(sideFeatures)}
          </ul>
        </main>
      </div>
    );
  }
}

export default FeaturedAlbums;
