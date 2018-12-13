// export const createAlbum = (filter) => {
//   return $.ajax({
//     method: 'GET',
//     url: '/api/albums',
//     data: { filter },
//   });
// };

export const fetchAlbums = (filter) => {
  return $.ajax({
    method: 'GET',
    url: '/api/albums',
    data: { filter },
  });
};

export const fetchGenreAlbums = (filter) => {
  return $.ajax({
    method: 'GET',
    url: '/api/albums',
    data: { filter },
  });
};

export const fetchArtistAlbums = (artistId) => {
  return $.ajax({
    method: 'GET',
    url: '/api/albums',
    data: { artistId },
  });
};

export const fetchAlbum = (albumId) => {
  return $.ajax({
    method: 'GET',
    url: `/api/albums/${albumId}`,
  });
};

export const createAlbum = (album) => {
  return $.ajax({
    method: 'POST',
    url: '/api/albums',
    data: { album },
  });
};
