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
      username: "Demo",
      password: "password"
    });
  }

  render() {
    return (
      <div>
        <div className="session-form">
          <h1>Sign up for a tunesmith account</h1>
          <p className="close-form" onClick={this.props.closeModal}>&times;</p>
          <div className="registration-select-form">
            <div className="signup-row">
              <i className="fas fa-headphones-alt"></i>
              <div className="registration-option">
                {this.props.fanSignup}
                <p className="signup-text">
                  Follow your favorite artists, keep a wishlist, get instant streaming of your purchases, showcase your collection, and explore the music of like-minded fans.
                </p>
              </div>
            </div>
            <div className="signup-row">
              <i className="fas fa-music"></i>
              <div className="registration-option">
                {this.props.artistSignup}
                <p className="signup-text">
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
      </div>
    )
  }
}




export default RegistrationSelect;
