import React from 'react';
import { Redirect, Link } from 'react-router-dom';

class ThinHeader extends React.Component {
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
          <button className="thin-header-session" onClick={this.logout}>logout</button>
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

  render() {
    debugger
    return (
      <div id="thin-header" className="thin-header-row">
        <div className="thin-header-content">
          <a className="thin-logo">~tunesmith</a>
          <input className="thin-search" placeholder="Search for artist or album" />
          <Link className="thin-header-session thin-header-collection" to={`/users/${this.props.currentUser}`}>collection</Link>
          <ul className="thin-action-list">
            {this.authButtons()}
          </ul>
        </div>
      </div>
    );
  }
}

export default ThinHeader;
