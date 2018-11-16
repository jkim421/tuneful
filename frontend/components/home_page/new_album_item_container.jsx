import React from 'react';
import { connect } from 'react-redux';
import NewAlbumItem from './new_album_item';
import {
  createCollectionAlbum,
  deleteCollectionAlbum
} from '../../actions/user_actions';

const mapStateToProps = (state) => {
  const userId = state.session.id;
  return {
    currentUser: userId,
    userCollection: userId ? state.entities.users[userId].user_collection_ids : [],
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    handleCollection: (data) => dispatch(createCollectionAlbum(data)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NewAlbumItem);
