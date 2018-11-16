export const createCollectionAlbum = (data) => {
  return $.ajax({
    method: 'POST',
    url: '/api/user_collection_albums',
    data: { data },
  });
};

export const deleteCollectionAlbum = (albumId) => {
  return $.ajax({
    method: 'DELETE',
    url: `/api/user_collection_albums/${albumId}`,
  });
};
