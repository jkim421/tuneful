import React from 'react';
import { Link } from 'react-router-dom';
import UserPageAlbum from './user_page_album';

const UserCollection = ({ collection }) => {
  const collItems = collection.map( album => {
    return (
      <UserPageAlbum album={album} key={album.id}/>
    )
  })
  return (
    <ul className="user-page-discog">
      {collItems}
    </ul>
  )
}

export default UserCollection;
