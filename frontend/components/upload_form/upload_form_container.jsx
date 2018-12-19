import React from 'react';
import { connect } from 'react-redux';
import UploadForm from './upload_form';
import { createAlbum } from '../../actions/album_actions';
import { createSong } from '../../actions/song_actions';
import { retrieveGenres } from '../../actions/genre_actions';

const mapStateToProps = (state) => {
  const user = state.entities.users[state.session.id] || {};
  const artist = state.entities.artists[user.artist_id] || {};
  const genres = state.entities.genres || {};
  return {
    user: user,
    artist: artist,
    genres: genres,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    getGenres: () => dispatch(retrieveGenres()),
    sendAlbum: (album) => dispatch(createAlbum(album)),
    sendSong: (song) => dispatch(createSong(song)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(UploadForm);
