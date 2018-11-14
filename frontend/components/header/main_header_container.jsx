import React from 'react';
import { connect } from 'react-redux';
import MainHeader from './main_header';

const mapStateToProps = (state) => {
  return {
    loggedIn: Boolean(state.session.id),
  };
};

const mapDispatchToProps = (dispatch) => {

};

export default connect(mapStateToProps)(MainHeader);
