export const fetchSongs = (albumId) => {
  return $.ajax({
    method: 'GET',
    url: '/api/songs/',
    data: { albumId },
  });
};
