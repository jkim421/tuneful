import React from 'react';
import { connect } from 'react-redux';
import CommentItem from './comment_item';

import {
  createComment,
  updateComment,
  deleteComment } from '../../actions/album_actions';

const mapStateToProps = (state, ownProps) => {
  const currentUser = state.session ? state.session.id === ownProps.user.id : false;
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

export default connect(mapStateToProps, mapDispatchToProps)(CommentItem);
