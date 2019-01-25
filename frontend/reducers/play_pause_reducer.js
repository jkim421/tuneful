import merge from 'lodash/merge';

import { SET_PLAY_PAUSE } from '../actions/play_pause_actions';

const playPauseReducer = (state = false, action) => {
  switch(action.type) {
    case SET_PLAY_PAUSE:
      if (action.play === true || action.play === false) {
        return action.play;
      } else {
        return !state;
      }
    default:
      return state;
  }
};

export default playPauseReducer;
