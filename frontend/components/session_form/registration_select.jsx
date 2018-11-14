import React from 'react';
import { Link } from 'react-router-dom';

class RegistrationSelect extends React.Component {

  constructor(props) {
    super(props);
    this.demoUser = this.demoUser.bind(this);
  }

  demoUser(e) {
    e.preventDefault();
    this.props.demoUserLogin({
      username: "demo",
      password: "password"
    });
  }

  render() {
    return (
      <div>
        <div className="session-form">
          <h1>Sign up for a tunesmith account</h1>
          <Link to="/" className="close-form">&times;</Link>
          <div className="registration-select-form">
            <div className="signup-row">
              <i className="fas fa-headphones-alt"></i>
              <div className="registration-option">
                <Link className="registration-link user-registration" to="/signup/user">Sign up as a fan</Link>
                <p>
                  Follow your favorite artists, keep a wishlist, get instant streaming of your purchases, showcase your collection, and explore the music of like-minded fans.
                </p>
              </div>
            </div>
            <div className="signup-row">
              <i className="fas fa-music"></i>
              <div className="registration-option">
                <Link className="registration-link artist-registration" to="/signup/artist">Sign up as an artist</Link>
                <p>
                  Sell directly to your fans with total control over your music and pricing. Easy access to your customers’ data, real-time stats, music chart reporting, and more.
                </p>
              </div>
            </div>
          </div>
          <p className="session-footer">
            Can't commit? Explore our site with a &nbsp;
            <button
              className="session-footer-button"
              onClick={this.demoUser}>demo login</button>.
          </p>
        </div>
        <div className="session-screen"/>
      </div>
    )
  }
}




export default RegistrationSelect;
