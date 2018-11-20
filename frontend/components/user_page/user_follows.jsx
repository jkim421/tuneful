import React from 'react';
import { Link } from 'react-router-dom';
import UserPageFollow from './user_page_follow';

const UserFollows = ({ follows }) => {
  const followItems = follows.map( artist => {
    return (
      <UserPageFollow artist={artist} key={artist.id}/>
    )
  })
  return (
    <ul className="user-page-discog">
      {followItems}
    </ul>
  )
}

export default UserFollows;
