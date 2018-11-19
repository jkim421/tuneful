import merge from 'lodash/merge';

import { RECEIVE_SONGS } from '../actions/song_actions';

const songsReducer = (state = {}, action) => {
  switch(action.type) {
    case RECEIVE_SONGS:
      return merge({}, state, action.songs);
    default:
      return state;
  }
};

export default songsReducer;
