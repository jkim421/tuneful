import merge from 'lodash/merge';

import { SET_EXPLORE_GENRE } from '../actions/filter_actions';

const exploreReducer = (state = null, action) => {
  switch(action.type) {
    case SET_EXPLORE_GENRE:
      state = action.genre;
      return state;
    default:
      return state;
  }
};

export default exploreReducer;
