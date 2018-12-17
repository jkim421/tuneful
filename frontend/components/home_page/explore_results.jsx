import React from 'react';
import GenreAlbum from './genre_album';
import { Link } from 'react-router-dom';

const ExploreResults = ({ albums }) => {
  debugger
  const genreAlbums = albums.map( album => {
    return (
      <GenreAlbum album={album} key={album.id}/>
    )
  })
  debugger
  return (
    <ul className="user-page-discog">
      {genreAlbums}
    </ul>
  )
}

export default ExploreResults;
