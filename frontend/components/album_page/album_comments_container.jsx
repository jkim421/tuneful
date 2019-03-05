import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router';
import AlbumComments from './album_comments';
import { commentSort } from '../../util/sort.js';
import { openModal } from '../../actions/modal_actions';

import {
  createComment, } from '../../actions/album_actions';

const mapStateToProps = (state, ownProps) => {
  const albumComments = state.entities.album_comments[ownProps.match.params.albumId] || [];
  const users = state.entities.users || {};
  const loggedIn = Boolean(state.session.id);
  return {
    currentUser: state.session.id,
    albumId: ownProps.match.params.albumId,
    albumComments: albumComments.sort(commentSort),
    users,
    loggedIn,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    createComment: (comment) => dispatch(createComment(comment)),
    openModal: () => dispatch(openModal('login')),
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(AlbumComments));
