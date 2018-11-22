import React from 'react';
import { connect } from 'react-redux';
import SongItem from './song_item';
import { setCurrentSong } from '../../actions/song_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    currentSong: state.entities.currentSong,
  };
};

const mapDispatchToProps = (state) => {
  return {
    setCurrentSong: (song) => dispatch(setCurrentSong(song)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(SongItem);
