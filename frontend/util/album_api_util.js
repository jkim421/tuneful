export const retrieveAlbums = (filter) => {
  return $.ajax({
    method: 'GET',
    url: '/api/albums',
    data: filter,
  });
};

export const retrieveAlbum = (albumId) => {
  return $.ajax({
    method: 'GET',
    url: `/api/albums/${albumId}`,
  });
};

export const createAlbum = (album) => {
  return $.ajax({
    method: 'POST',
    url: '/api/albums',
    data: { artist },
  });
};
