export const createArtist = (artist) => {
  return $.ajax({
    method: 'POST',
    url: '/api/artists',
    data: { artist },
  });
};

export const updateArtist = (artist) => {
  debugger
  return $.ajax({
    method: 'PATCH',
    url: `/api/artists/${artist.id}`,
    data: { artist },
  });
};

export const fetchArtist = (artistId) => {
  return $.ajax({
    method: 'GET',
    url: `/api/artists/${artistId}`,
  });
};
