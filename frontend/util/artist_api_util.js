export const createArtist = (artist) => {
  return $.ajax({
    method: 'POST',
    url: '/api/artists',
    data: { artist },
  });
};
