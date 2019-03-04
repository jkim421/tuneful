import React from 'react';
import { connect } from 'react-redux';
import AlbumComment from './album_comment';

import {
  createComment,
  updateComment,
  deleteComment } from '../../actions/album_actions';

const mapStateToProps = (state, ownProps) => {
  const currentUser = this.props.session ? this.props.session === ownProps.user.id : false;
  return {
    currentUser,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    createComment: (comment) => dispatch(createComment(comment)),
    updateComment: (comment) => dispatch(updateComment(comment)),
    deleteComment: (commentId) => dispatch(deleteComment(commentId)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(AlbumComment);
