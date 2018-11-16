import React from 'react';

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
        <div className="large-feature featured-album">
          <div className="feature-details">
            <p className="feature-title">{album.title}</p>
            <p className="feature-band">{album.artist_id}</p>
          </div>
        </div>
      )
    } else {
      return null
    }
  }

  showSide(albums) {
    if (this.props.albums.length > 0) {
      const albumDetails = albums.map( (album) => {
        return (
          <div className="small-feature featured-album" key={album.id}>
            <div className="feature-details">
              <p className="feature-title">{album.title}</p>
              <p className="feature-band">{album.artist_id}</p>
            </div>
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
