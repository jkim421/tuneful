import { combineReducers } from 'redux';

import modalReducer from './modal_reducer';
import playPauseReducer from './play_pause_reducer';

export default combineReducers({
  modal: modalReducer,
  playPause: playPauseReducer,
});
