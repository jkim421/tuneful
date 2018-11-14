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

  greeting() {
    if (this.props.loggedIn) {
      return <p>Hi {this.props.currentUser.username}</p>
    } else {
      return null
    }
  }

  render() {
    return (
      <div className="main-header-row">
        <div className="main-header-content">
          <h3>Placeholder For Logo</h3>
          {this.greeting()}
          <p>Discover amazing new music and directly support the artists who make it.</p>
          <Link to="/login" className="header-session">log in</Link>
          &nbsp;
          <Link to="/signup" className="header-session">sign up</Link>
          <button className="header-session" onClick={this.logout}>logout</button>
        </div>
      </div>
    );
  }
}

export default MainHeader;
