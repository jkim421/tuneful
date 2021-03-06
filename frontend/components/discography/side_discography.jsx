import React from 'react';
import { Link } from 'react-router-dom';

const SideDiscography = ({ albumId, discog }) => {
  const correctDiscog = discog.filter( album => album.id !== parseInt(albumId) );
  const albums = (discog) => {
    return (
      discog.map( album => {
        return (
          <li className="side-discog-item" key={album.id}>
            <Link to={`/albums/${album.id}`}>
              <img className="side-discog-img" src={album.photo_url}/>
            </Link>
            <Link to={`/albums/${album.id}`} className="side-discog-title">{album.title}</Link>
            <p className="side-discog-date">{album.release_date}</p>
          </li>
        )
      })
    )
  };
  return (
    <div className="side-discog">
      <p className="discog-label">{correctDiscog.length > 0 ? "discography" : ""}</p>
      <ul className="side-discog-list">
        {albums(correctDiscog)}
      </ul>
    </div>
  )
};

export default SideDiscography;
