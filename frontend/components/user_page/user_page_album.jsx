import React from 'react';
import { Link } from 'react-router-dom';

const UserPageAlbum = ({ album }) => {
  return (
    <li className="user-page-album" key={album.id}>
      <Link to={`/albums/${album.id}`} className="user-page-link">
        <img className="user-page-album-img"/>
        <div className="user-page-album-details">
          <p className="user-page-album-title">{album.title}</p>
          <p className="user-page-album-artist">{album.artist}</p>
        </div>
      </Link>
    </li>
  )
}

export default UserPageAlbum;
