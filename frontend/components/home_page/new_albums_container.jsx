import React from 'react';
import { connect } from 'react-redux';
import NewAlbums from './new_albums';
import { fetchNewAlbums } from '../../actions/album_actions';
import { selectNew } from '../../selectors/albums_selectors';


const mapStateToProps = (state) => {
  return {
    artists: Object.values(state.entities.artists),
    albums: selectNew(
      state.entities.albums,
      state.entities.albums.new),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    getNewAlbums: () => dispatch(fetchNewAlbums("new")),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(NewAlbums);
