import React from 'react';
import { connect } from 'react-redux';
import NewAlbumItem from './new_album_item';

const mapStateToProps = (state) => {
  return {
    currentUser: state.session.id
  }
}

const mapDispatchToProps = (dispatch) => {
  return {

  };
};

export default connect(mapStateToProps)(NewAlbumItem);
