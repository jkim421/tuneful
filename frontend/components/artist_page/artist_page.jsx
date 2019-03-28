import React from 'react';
import { Link } from 'react-router-dom';
import ArtistAlbum from './artist_album';

class ArtistPage extends React.Component {
  constructor(props) {
    super(props);
    this.handleFollow = this.handleFollow.bind(this);
  }

  componentDidMount() {
    const artistId = this.props.match.params.artistId;
    this.props.fetchArtist(artistId);
    this.props.fetchArtistAlbums(artistId);
  }

  componentDidUpdate(prevProps) {
    if (this.props.match.params.artistId !== prevProps.match.params.artistId) {
      const artistId = this.props.match.params.artistId;
      this.props.fetchArtist(artistId);
      this.props.fetchArtistAlbums(artistId);
    }
  }

  handleFollow(e) {
    const followInfo = {
      artist_id: this.props.artist.id,
      user_id: this.props.currentUser,
    };
    if (this.props.userFollows.includes(this.props.artist.id)) {
      this.props.removeFollow(followInfo);
    } else {
      this.props.addFollow(followInfo);
    }
  }

  followButton() {
    if (!!this.props.currentUser && this.props.artist) {
      return (
        <>
          <button
            className="artist-follow-btn"
            onClick={ this.handleFollow }>
            { this.props.userFollows.includes(this.props.artist.id)
              ? "Following" : "Follow" }
            </button>
          </>
      );
    } else {
      return null;
    }
  }

  albumList(discog) {
    return (
      discog.map( album => {
        return <ArtistAlbum album={album} key={album.id}/>
      })
    )
  }

  render() {
    return (
      <main className="show-page">
        <section className="show-body">
          <div className="show-cover-container">
            <Link className="show-cover-link" to={`/artists/${this.props.artist.id}`}>
              <img className="show-cover-img" src={this.props.artist.cover_photo_url}/>
            </Link>
          </div>
          <section className="show-content">
            <div className="artist-albums">
              <ul className="artist-albums-list">
                { this.albumList(this.props.discog) }
              </ul>
            </div>
            <aside className="show-sidebar">
              <Link to={`/artists/${this.props.artist.id}`}>
                <img className="artist-side-img" src={this.props.artist.photo_url}/>
              </Link>
              <p className="artist-side-name">{this.props.artist.name || ""}</p>
              <p className="artist-side-loc">{this.props.artist.location || ""}</p>
              { this.followButton() }
              <p className="artist-description">{this.props.artist.bio || ""}</p>
              <a
                className="artist-website"
                href={`http://${this.props.artist.website}`}
                target="_blank">
                {this.props.artist.website ? "website" : ""}
              </a>
            </aside>
          </section>
        </section>
      </main>
    )
  }

}

export default ArtistPage;
