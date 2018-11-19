import React from 'react';
import { Link } from 'react-router-dom';

const ArtistAlbum = ({ album }) => {
  return (
    <li className="artist-discog-item">
      <Link to={`/albums/${album.id}`} className="artist-discog-link">
        <img className="artist-discog-img"/>
        <p className="artist-discog-title">{album.title}</p>
      </Link>
    </li>
  )
}

export default ArtistAlbum;
