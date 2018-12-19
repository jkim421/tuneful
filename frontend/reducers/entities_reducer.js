import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import artistsReducer from './artists_reducer';
import albumsReducer from './albums_reducer';
import songsReducer from './songs_reducer';
import currentSongReducer from './current_song_reducer';
import genresReducer from './genres_reducer';

const entitiesReducer = combineReducers({
  users: usersReducer,
  artists: artistsReducer,
  albums: albumsReducer,
  songs: songsReducer,
  currentSong: currentSongReducer,
  genres: genresReducer,
});

export default entitiesReducer;
