import React from 'react';
import { connect } from 'react-redux';
import Explore from './explore';
import { fetchGenreAlbums } from '../../actions/album_actions';
import { selectGenre } from '../../selectors/albums_selectors';
import { setExploreGenre } from '../../actions/filter_actions';


const mapStateToProps = (state) => {
  return {
    artists: Object.values(state.entities.artists),
    genreAlbums: selectGenre(state.entities.albums, state.ui.exploreGenre),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    setExploreGenre: (genreId) => dispatch(setExploreGenre(genreId)),
    getGenreAlbums: (genreId) => dispatch(fetchGenreAlbums({"genre": genreId})),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Explore);
