import merge from 'lodash/merge';

import { RECEIVE_ALBUM, RECEIVE_COMMENT } from '../actions/album_actions';

const albumCommentsReducer = (state = {}, action) => {
  let albumId;
  let updatedState;
  switch(action.type) {
    case RECEIVE_ALBUM:
      albumId = Object.keys(action.albums)[0];
      updatedState = {[albumId]: action.album_comments[albumId]};
      return merge({}, state, updatedState);
    case RECEIVE_COMMENT:
      albumId = Object.keys(action.comments)[0];
      updatedState = merge({}, state);
      updatedState[albumId] = action.comments[albumId];
      return updatedState;
    default:
      return state;
  }
};

export default albumCommentsReducer;
