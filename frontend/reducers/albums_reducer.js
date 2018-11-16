import merge from 'lodash/merge';

import { RECEIVE_ALBUMS, RECEIVE_ALBUM } from '../actions/album_actions';

const albumsReducer = (state = {}, action) => {
  switch(action.type) {
    case RECEIVE_ALBUMS:
      return merge({}, state, action.albums);
    default:
      return state;
  }
};

export default albumsReducer;
