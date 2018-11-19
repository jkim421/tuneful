import React from 'react';
import { connect } from 'react-redux';
import AlbumPage from './album_page';
import {
  createCollectionAlbum,
  deleteCollectionAlbum
} from '../../actions/user_actions';
import { fetchAlbum, fetchArtistAlbums } from '../../actions/album_actions';
import { fetchArtist } from '../../actions/artist_actions';
import { fetchSongs } from '../../actions/song_actions';
import { selectDiscog } from '../../selectors/albums_selectors';

const mapStateToProps = (state, ownProps) => {
  const album = state.entities.albums[ownProps.match.params.albumId] || {};
  const artist = state.entities.artists[album.artist_id] || {};
  const songs = state.entities.songs[ownProps.match.params.albumId] || [];
  return {
    album,
    artist,
    songs,
    discog: selectDiscog(state.entities.albums, artist.album_ids),
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchAlbum: (albumId) => dispatch(fetchAlbum(albumId)),
    fetchArtistAlbums: (artistId) => dispatch(fetchArtistAlbums(artistId)),
    fetchArtist: (artistId) => dispatch(fetchArtist(artistId)),
    fetchSongs: (albumId) => dispatch(fetchSongs(albumId)),
    addCollection: (data) => dispatch(createCollectionAlbum(data)),
    removeCollection: (data) => dispatch(deleteCollectionAlbum(data)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(AlbumPage);
