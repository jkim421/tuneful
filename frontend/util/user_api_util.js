export const createCollectionAlbum = (data) => {
  return $.ajax({
    method: 'POST',
    url: '/api/user_collection_albums',
    data: { data },
  });
};

export const deleteCollectionAlbum = (data) => {
  return $.ajax({
    method: 'DELETE',
    url: `/api/user_collection_albums/${data.user_id}`,
    data: { data }
  });
};
