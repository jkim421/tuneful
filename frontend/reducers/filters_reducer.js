import merge from 'lodash/merge';

const defaultFilters = Object.freeze({
  artists: "",
  albums: "",
});

const filtersReducer = (state = defaultFilters, action) => {
  switch(action.type) {
    default:
      return defaultFilters;
  }
};

export default filtersReducer;
