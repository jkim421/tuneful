import { combineReducers } from 'redux';

import modalReducer from './modal_reducer';
import playPauseReducer from './play_pause_reducer';
import searchReducer from './search_reducer';
import exploreReducer from './explore_reducer';

export default combineReducers({
  modal: modalReducer,
  playPause: playPauseReducer,
  searchResults: searchReducer,
  exploreGenre: exploreReducer,
});
