import React from 'react';
import { connect } from 'react-redux';
import FeaturedAlbums from './featured_albums';
import { fetchAlbums } from '../../actions/album_actions';

const mapStateToProps = (state) => {
  return {
    artists: Object.values(state.entities.artists),
    albums: Object.values(state.entities.albums),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    getFeaturedAlbums: () => dispatch(fetchAlbums("features")),
    getNewAlbums: () => dispatch(fetchAlbums("new")),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(FeaturedAlbums);
