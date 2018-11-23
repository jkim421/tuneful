import React from 'react';
import { Link } from 'react-router-dom';

const SearchItems = ({ albums, artists, clearInput, query }) => {
  if (albums.length > 0 || artists.length > 0) {
    const albumResults = albums.map( album => {
      return (
        <li
          key={album.id}
          className="search-result-item">
          <Link
            to={`/albums/${album.id}`}
            className="search-item-link"
            onClick={clearInput}>
            <p className="search-item-name">{album.title}</p>
            <p className="search-item-by">by {album.artist}</p>
          </Link>
          <p className="search-item-type">ALBUM</p>
        </li>
      )
    });
    const artistResults = artists.map( artist => {
      return (
        <li
          key={artist.id}
          className="search-result-item">
          <Link
            to={`/artists/${artist.id}`}
            className="search-item-link"
            onClick={clearInput}>
            <p className="search-item-name">{artist.name}</p>
          </Link>
          <p className="search-item-type">ARTIST</p>
        </li>
      )
    });
    return albumResults.concat(artistResults);
  } else {
    return null;
  }
};

export default SearchItems;
