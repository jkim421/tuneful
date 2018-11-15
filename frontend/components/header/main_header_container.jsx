import React from 'react';
import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import MainHeader from './main_header';
import { openModal, closeModal } from '../../actions/modal_actions';

const mapStateToProps = (state) => {
  return {
    currentUser: state.entities.users[state.session.id],
    loggedIn: Boolean(state.session.id),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    logout: () => dispatch(logout()),
    signupForm: (
      <button className="header-session" onClick={() => dispatch(openModal('signup'))}>
        Sign up
      </button>
    ),
    loginForm: (
      <button className="header-session" onClick={() => dispatch(openModal('login'))}>
        Log in
      </button>
    ),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(MainHeader);
