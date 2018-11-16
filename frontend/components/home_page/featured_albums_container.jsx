import React from 'react';
import { connect } from 'react-redux';
import FeaturedAlbums from './featured_albums';
import { fetchAlbums } from '../../actions/album_actions';
import { selectFeatures } from '../../selectors/albums_selectors';

const mapStateToProps = (state) => {
  return {
    artists: Object.values(state.entities.artists),
    albums: selectFeatures(state.entities.albums),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    getFeaturedAlbums: () => dispatch(fetchAlbums("features")),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(FeaturedAlbums);
