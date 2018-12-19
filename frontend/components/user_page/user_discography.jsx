import React from 'react';
import { Link } from 'react-router-dom';
import UserPageAlbum from './user_page_album';

const UserDiscography = ({ discog }) => {
  const discogItems = discog.map( album => {
    return (
      <UserPageAlbum album={album} key={album.id}/>
    )
  });
  return (
    <ul className="user-page-discog">
      {discogItems}
    </ul>
  )
}

export default UserDiscography;
