import React from 'react';
import * as SearchApiUtil from '../util/search_api_util';

export const RECEIVE_SEARCH_RESULTS = "RECEIVE_SEARCH_RESULTS";
export const RESET_SEARCH_RESULTS = "RESET_SEARCH_RESULTS";

export const receiveResults = (results) => {
  return {
    type: RECEIVE_SEARCH_RESULTS,
    results,
  };
};

export const resetResults = () => {
  debugger
  return {
    type: RESET_SEARCH_RESULTS,
  };
};

export const fetchSearchResults = query => dispatch => {
  return SearchApiUtil.matchQuery(query).then(results =>
    dispatch(receiveResults(results)));
};
