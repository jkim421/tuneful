import React from 'react';
import { Link } from 'react-router-dom';

const UserPageFollow = ({ artist }) => {
  return (
    <li className="user-page-album" key={artist.id}>
      <Link to={`/artists/${artist.id}`} className="user-page-link">
        <img className="user-page-album-img"/>
        <div className="user-page-album-details">
          <p className="user-page-album-title">{artist.name}</p>
        </div>
      </Link>
    </li>
  )
}

export default UserPageFollow;
