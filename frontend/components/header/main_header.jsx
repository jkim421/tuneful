import React from 'react';
import { Redirect, Link } from 'react-router-dom';
import MainSearchBarContainer from '../search_bar/main_search_bar_container';

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
          {this.props.signupForm}
        </li>
        <li>
          {this.props.loginForm}
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
            <Link className="header-session header-collection" to={`/users/${this.props.currentUser.id}/`}>collection</Link>
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
      <div id="main-header" className="main-header-row">
        <div className="main-header-content">
          <div className="main-header-top">
            <p className="home-logo">~tunesmith</p>
            <MainSearchBarContainer />
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
