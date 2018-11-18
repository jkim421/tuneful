import React from 'react';
import { connect } from 'react-redux';
import AlbumPage from './album_page';
import {
  createCollectionAlbum,
  deleteCollectionAlbum
} from '../../actions/user_actions';
import { fetchAlbum } from '../../actions/album_actions';
import { fetchArtist } from '../../actions/artist_actions';

const mapStateToProps = (state, ownProps) => {
  const album = state.entities.albums[ownProps.match.params.albumId] || {};
  const artist = state.entities.artists[album.artist_id] || {};
  let songs;
  if (!!artist) {
    songs = "I'm a song!"
  }
  debugger
  return {
    album,
    artist,
    discography: {},
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchAlbum: (albumId) => dispatch(fetchAlbum(albumId)),
    fetchArtist: (artistId) => dispatch(fetchArtist(artistId)),
    addCollection: (data) => dispatch(createCollectionAlbum(data)),
    removeCollection: (data) => dispatch(deleteCollectionAlbum(data)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(AlbumPage);
