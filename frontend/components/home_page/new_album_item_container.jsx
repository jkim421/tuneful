import React from 'react';
import { connect } from 'react-redux';
import NewAlbumItem from './new_album_item';

const mapStateToProps = (state) => {
  const userId = state.session.id;
  return {
    currentUser: userId,
    userCollection: userId ? state.entities.users[userId].user_collection_ids : [],
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    handleCollection: () => dispatch()
  };
};

export default connect(mapStateToProps)(NewAlbumItem);
