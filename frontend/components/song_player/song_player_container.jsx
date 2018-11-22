import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router';
import SongPlayer from './song_player';
import { setCurrentSong } from '../../actions/song_actions';
import { setPlayPause } from '../../actions/play_pause_actions';

const mapStateToProps = (state, ownProps) => {
  debugger
  return {
    currentSong: state.entities.currentSong,
    isPlaying: state.ui.playPause,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    setCurrentSong: (song) => dispatch(setCurrentSong(song)),
    setPlayPause: (song) => dispatch(setPlayPause(song)),
  };
};

const SongPlayerContainer = connect(mapStateToProps, mapDispatchToProps)(SongPlayer);

export default withRouter(SongPlayerContainer);
