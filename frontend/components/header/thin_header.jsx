import React from 'react';
import { Redirect, Link } from 'react-router-dom';

class ThinHeader extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className="main-header-row">
        <div className="main-header-content">
          <h3>Placeholder Logo</h3>
          <p>Discover amazing new music and directly support the artists who make it.</p>
          <Link to="/login" className="header-link">Log In</Link>
          <Link to="/signup" className="header-link">Sign Up</Link>
        </div>
      </div>
    );
  }
}

export default ThinHeader;
