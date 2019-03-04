import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router';
import AlbumComments from './album_comments';

import {
  createComment,
  updateComment,
  deleteComment } from '../../actions/album_actions';

const mapStateToProps = (state, ownProps) => {
  const albumComments = state.entities.album_comments[ownProps.match.params.albumId] || [];
  const users = state.entities.users || {};
  const loggedIn = Boolean(state.session.id);
  return {
    albumComments,
    users,
    loggedIn,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    createComment: (comment) => dispatch(createComment(comment)),
    updateComment: (comment) => dispatch(updateComment(comment)),
    deleteComment: (commentId) => dispatch(deleteComment(commentId)),
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(AlbumComments));
