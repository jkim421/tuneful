import React from 'react';
import { Link, Route } from 'react-router-dom';
import UserDiscography from './user_discography';
import UserCollection from './user_collection';
import UserFollows from './user_follows';

class UserPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = { path: "" }
    this.selectPath = this.selectPath.bind(this);
  }

  componentDidMount() {
    const userId = this.props.match.params.userId;
    this.props.fetchUser(userId).then( res => {
      if (this.props.artist) {
        this.props.fetchArtistAlbums(this.props.artist.id)
      }
    }).then( res => {
      this.props.fetchCollectionAlbums(this.props.userCollection)
    }).then( res =>
      this.props.fetchFollowedArtists(this.props.userFollows)
    )
  }

  selectPath(path) {
    const userId = this.props.match.params.userId;
    if (path === "follows" && this.props.location.pathname.includes("follows") ||
      path === "artist_collection" && this.props.location.pathname.includes("collection") ||
      path === "artist_discog" && this.props.location.pathname === `/users/${userId}/` ||
      path === "user_collection" && this.props.location.pathname === `/users/${userId}/`) {
        return "selected-user-tab"
      } else {
        return ""
      }
  }

  albumList(discog) {
    return (
      discog.map( album => {
        return <ArtistAlbum album={album} key={album.id}/>
      })
    )
  }

  discogRoute() {
    if (this.props.artist) {
      return (
        <>
          <Route
            exact path="/users/:userId"
            render={ () =>
              <UserDiscography discog={this.props.discog} />
            } />
          <Route
            path="/users/:userId/collection"
            render={ () =>
              <UserCollection collection={this.props.userCollectionAlbums} />
            } />
        </>
      )
    } else {
      return (
        <Route
          exact path="/users/:userId"
          render={ () =>
            <UserCollection collection={this.props.userCollectionAlbums} />
          } />
      )
    }
  }

  linkTabs() {
    const userId = this.props.match.params.userId;
    if (this.props.artist) {
      return (
        <div className="user-tabs">
          <Link
            to={`/users/${userId}/`}
            className={`user-tabs-link ${this.selectPath("artist_discog")}`}>
            discography &nbsp;{this.props.discog.length}</Link>
          <Link
            to={`/users/${userId}/collection`}
            className={`user-tabs-link ${this.selectPath("artist_collection")}`}>
            collection &nbsp;{this.props.userCollection.length}</Link>
          <Link
            to={`/users/${userId}/follows`}
            className={`user-tabs-link ${this.selectPath("follows")}`}>
            follows &nbsp;{this.props.userFollows.length}</Link>
        </div>
      )
    } else {
      return (
        <div className="user-tabs">
          <Link
            to={`/users/${userId}/`}
            className={`user-tabs-link ${this.selectPath("user_collection")}`}>
            collection &nbsp;{this.props.userCollection.length}</Link>
          <Link
            to={`/users/${userId}/follows`}
            className={`user-tabs-link ${this.selectPath("follows")}`}>
            follows &nbsp;{this.props.userFollows.length}</Link>
        </div>
      )
    }
  }

  usernameDisplay() {
    if (this.props.user) {
      if (this.props.user.artist_id && this.props.artist) {
        return (
          <div className="user-header-titles">
            <div className="user-header-artist">
              <p className="user-header-artistname">{this.props.artist.name}</p>
            </div>
            <p className="user-header-name-sm">{this.props.user.username}</p>
          </div>
        )
      } else {
        return (
          <p className="user-header-name">{this.props.user.username}</p>
        )
      }
    }
  }

  photoDisplay() {
    if (this.props.artist) {
      return <img className="user-header-img" src={this.props.artist.photo_url}/>
    } else {
      if (this.props.user) {
        if (this.props.user.photo_url) {
          return <img className="user-header-img" src={this.props.user.photo_url}/>
        } else {
          return <div className="user-default-img"/>
        }
      }
    }
  }

  render() {
    return (
      <main className="user-page">
        <section className="user-body">
          <div className="user-header-row">
            {this.photoDisplay()}
            <div className="user-header-details">
              <div className="user-header-toprow">
                {this.usernameDisplay()}
              </div>
              <p className="user-header-loc">
                {this.props.artist ? this.props.artist.location : ""}
              </p>
              <p className="user-header-bio">
                {this.props.artist ? this.props.artist.bio : ""}
              </p>
            </div>
          </div>
          {this.linkTabs()}
          <div className="user-item-display">
            {this.discogRoute()}
            <Route
              path="/users/:userId/follows"
              render={ () =>
                <UserFollows follows={this.props.userFollowedArtists} />
              } />
          </div>
        </section>
      </main>
    )
  }

}

export default UserPage;
