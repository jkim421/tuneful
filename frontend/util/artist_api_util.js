export const createArtist = (artist) => {
  return $.ajax({
    method: 'POST',
    url: '/api/artists',
    data: { artist },
  });
};

export const retrieveArtist = (artistId) => {
  return $.ajax({
    method: 'GET',
    url: `/api/artists/${artistId}`,
  });
};
