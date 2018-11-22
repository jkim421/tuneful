import React from 'react';
import { connect } from 'react-redux';
import SongItem from './song_item';
import { setCurrentSong } from '../../actions/song_actions';
import { setPlayPause } from '../../actions/play_pause_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    currentSong: state.entities.currentSong,
    isPlaying: state.ui.playPause,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    setCurrentSong: (song) => dispatch(setCurrentSong(song)),
    setPlayPause: () => dispatch(setPlayPause()),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SongItem);
