import React from 'react';
import { connect } from 'react-redux';
import ArtistPage from './artist_page';
import { fetchArtist } from '../../actions/artist_actions';
import { fetchArtistAlbums } from '../../actions/album_actions';
import { selectDiscog } from '../../selectors/albums_selectors';
import {
  createFollow,
  deleteFollow,
} from '../../actions/user_actions';

const mapStateToProps = (state, ownProps) => {
  const userId = state.session.id;
  const artist = state.entities.artists[ownProps.match.params.artistId] || {};
  return {
    artist,
    discog: selectDiscog(state.entities.albums, artist.album_ids),
    currentUser: userId,
    userFollows: userId ? state.entities.users[userId].user_follow_ids : [],
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    fetchArtist: (artistId) => dispatch(fetchArtist(artistId)),
    fetchArtistAlbums: (artistId) => dispatch(fetchArtistAlbums(artistId)),
    addFollow: (data) => dispatch(createFollow(data)),
    removeFollow: (data) => dispatch(deleteFollow(data)),
  }
};

export default connect(mapStateToProps, mapDispatchToProps)(ArtistPage);
