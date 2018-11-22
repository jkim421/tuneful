import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router';
import SongPlayer from './song_player';
import { setCurrentSong } from '../../actions/song_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    currentSong: state.entities.currentSong,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    setCurrentSong: (song) => dispatch(setCurrentSong(song)),
  };
};

const SongPlayerContainer = connect(mapStateToProps, mapDispatchToProps)(SongPlayer);
export default withRouter(SongPlayerContainer);
