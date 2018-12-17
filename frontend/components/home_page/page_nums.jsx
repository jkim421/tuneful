import React from 'react';
import { Link } from 'react-router-dom';

const PageNum = ({ num, onClick, currentPage }) => {
  return (
    <span
      className={`explore-page-num ${num === currentPage ? "current-page-num" : ""}`}
      onClick={onClick}
      >{num}</span>
  );
};

export default PageNum;
