import React from 'react';
import { Link } from 'react-router-dom';

class FeaturedAlbums extends React.Component {

  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getFeaturedAlbums()
  }

  showMain(album) {
    if (this.props.albums.length > 0) {
      return (
        <Link className="large-feature-link" to={`/artist/${album.artist_id}`}>
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
          <div className="small-feature-wrapper">
            <Link className="small-feature-link" to={`/artist/${album.artist_id}`} key={album.id}>
              <div className="small-feature-details">
                <p className="small-feature-title">{album.title}</p>
                <p className="small-feature-band">{album.artist}</p>
              </div>
            </Link>
          </div>
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
      firstFeature = features[0];
      sideFeatures = features.slice(1);
    }
    return (
      <div className="features-container">
        <main className="featured-albums">
          <section className="main-feature">
            {this.showMain(firstFeature)}
          </section>
          <aside className="side-features">
            {this.showSide(sideFeatures)}
          </aside>
        </main>
      </div>
    );
  }
}

export default FeaturedAlbums;
