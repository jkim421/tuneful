import merge from 'lodash/merge';

import { RECEIVE_ALBUM, RECEIVE_COMMENT } from '../actions/album_actions';

const albumCommentsReducer = (state = {}, action) => {
  switch(action.type) {
    case RECEIVE_ALBUM:
      const albumId = Object.keys(action.albums)[0];
      const updatedState = {[albumId]: action.album_comments[albumId]};
      return merge({}, state, updatedState);
    case RECEIVE_COMMENT:
      return merge ({}, state, action.comments);
    default:
      return state;
  }
};

export default albumCommentsReducer;
