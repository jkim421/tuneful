import React from 'react';
import { Redirect, Link } from 'react-router-dom';
import ThinSearchBarContainer from '../search_bar/thin_search_bar_container';

class ThinHeader extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      toggleGear: "hidden",
      }
    this.logout = this.logout.bind(this);
    this.toggleGearDisplay = this.toggleGearDisplay.bind(this);
    this.handleClick = this.handleClick.bind(this);
    this.gearIcon = React.createRef();
  }

  componentDidMount() {
    document.addEventListener('mousedown', this.handleClick)
  }

  componentWillUnmount() {
    document.removeEventListener('mousedown', this.handleClick)
  }

  logout(e) {
    e.preventDefault();
    this.props.logout();
    this.props.history.push('/');
  }

  toggleGearDisplay() {
    const gearClass = (this.state.toggleGear === "hidden") ? "show" : "hidden";
    this.setState({ toggleGear: gearClass });
  }

  handleOutsideClick() {
    if (this.state.toggleGear === "show") {
      this.setState({ toggleGear: "hidden" })
    }
  }

  handleClick(e) {
    if (this.props.loggedIn && this.gearIcon.current.contains(e.target)) {
      return;
    }

    this.handleOutsideClick();
  }

  userArtistPage() {
    if (!!this.props.currentUser.artist_id) {
      return (
        <li>
          <Link
            to={`/artists/${this.props.currentUser.artist_id}/`}
            className="thin-header-dropdown">artist page</Link>
        </li>
      )
    } else {
      return null;
    }
  }

  authButtons() {
    if (this.props.loggedIn) {
      return (
        <div className="thin-header-right">
          <Link
            to={`/users/${this.props.currentUser.id}/`}
            className="thin-header-coll thin-header-actions thin-header-session">
            collection</Link>
          <div
            id="gear-dropdown-btn"
            className="thin-header-actions thin-header-session"
            onClick={this.toggleGearDisplay}
            ref={this.gearIcon}>
            <div className="gear-icons">
              <i className="fas fa-cog header-icon"/>
              <span className="header-icon">&#9662;</span>
            </div>
            <ul
              id="gear-dropdown"
              className={`gear-dropdown ${this.state.toggleGear}`}>
              {this.userArtistPage()}
              <li>
                <button className="thin-header-dropdown gear-logout" onClick={this.logout}>logout</button>
              </li>
            </ul>
          </div>
        </div>
      )
    } else {
      return (
        <div className="thin-action-list">
          {this.props.signupForm}
          {this.props.loginForm}
        </div>
      )
    }
  }

  render() {
    return (
      <div id="thin-header" className="thin-header-row">
        <div className="thin-header-content">
          <div className="thin-header-left">
            <Link to="/" className="thin-logo">~tuneful</Link>
            <Link to="/" className="thin-header-home thin-header-actions">discover</Link>
            <ThinSearchBarContainer />
          </div>
          {this.authButtons()}
        </div>
      </div>
    );
  }
}

export default ThinHeader;
