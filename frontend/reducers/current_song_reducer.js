import merge from 'lodash/merge';

import { SET_CURRENT_SONG } from '../actions/song_actions';

const currentSongsReducer = (state = {}, action) => {
  switch(action.type) {
    case SET_CURRENT_SONG:
      return merge({}, state, action.song);
    default:
      return state;
  }
};

export default currentSongsReducer;
