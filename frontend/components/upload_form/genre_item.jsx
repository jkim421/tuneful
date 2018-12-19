import React from 'react';
import { Link } from 'react-router-dom';

const GenreItem = ({ value, name }) => {
  return (
    <option value={value}>{name}</option>
  )
}

export default GenreItem;
