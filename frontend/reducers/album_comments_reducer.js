import merge from 'lodash/merge';

import { RECEIVE_ALBUM } from '../actions/album_actions';

const albumCommentsReducer = (state = {}, action) => {
  switch(action.type) {
    case RECEIVE_ALBUM:
      const album = Object.values(action.albums)[0];
      return merge ({}, state, { [album.id]: action.album_comments[album.id] });
    default:
      return state;
  }
};

export default albumCommentsReducer;
