import React from 'react';
import { Link } from 'react-router-dom';

const GenreAlbum = ({ album }) => {
  return (
    <li className="genre-album" key={album.id}>
      <Link to={`/albums/${album.id}`} className="genre-link">
        <img className="genre-album-img" src={album.photo_url}/>
        <div className="genre-album-details">
          <p className="genre-album-title">{album.title}</p>
          <p className="genre-album-artist">{album.artist}</p>
        </div>
      </Link>
    </li>
  )
}

export default GenreAlbum;
