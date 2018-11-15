import React from 'react';
import { Redirect, Link } from 'react-router-dom';

class MainHeader extends React.Component {
  constructor(props) {
    super(props);
    this.logout = this.logout.bind(this);
  }

  logout(e) {
    e.preventDefault();
    this.props.logout();
  }

  authButtons() {
    if (this.props.loggedIn) {
      return (
        <li>
          <button className="header-session" onClick={this.logout}>logout</button>
        </li>
      )
    } else {
      return (
        <>
        <li>
          <Link to="/signup" className="header-session">sign up</Link>
        </li>
        <li>
          <Link to="/login" className="header-session">log in</Link>
        </li>
        </>
      )
    }
  }

  greeting() {
    if (this.props.loggedIn) {
      return (
        <ul className="home-action-list">
          <li className="home-name">Hi {this.props.currentUser.username}</li>
          <li>
            <Link className="header-session header-collection" to={`/users/${this.props.currentUser}`}>collection</Link>
          </li>
        </ul>
      );
    } else {
      return (
        <p className="home-pitch">Discover amazing new music and directly support the artists who make it.</p>
      );
    }
  }

  render() {
    return (
      <div className="main-header-row">
        <div className="main-header-content">
          <div className="main-header-top">
            <p className="home-logo">~tunesmith</p>
            <input className="home-search" placeholder="Search for artist or album" />
          </div>
          <div className="main-header-bottom">
            {this.greeting()}
            <ul className="home-action-list">
              {this.authButtons()}
            </ul>
          </div>
        </div>
      </div>
    );
  }
}

export default MainHeader;
