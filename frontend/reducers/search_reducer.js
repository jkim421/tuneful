import merge from 'lodash/merge';

import { RECEIVE_SEARCH_RESULTS } from '../actions/search_actions';
import { RESET_SEARCH_RESULTS } from '../actions/search_actions';

const defaultState = {
  albums: [],
  artists: [],
};

const searchReducer = (state = defaultState, action) => {
  switch(action.type) {
    case RECEIVE_SEARCH_RESULTS:
      const albums = action.results.albums ?
        { albums: Object.values(action.results.albums) } : { albums: [] };
      const artists = action.results.artists ?
        { artists: Object.values(action.results.artists) } : { albums: [] };
      return merge({}, albums, artists);
    case RESET_SEARCH_RESULTS:
      return defaultState;
    default:
      return defaultState;
  }
};

export default searchReducer;
