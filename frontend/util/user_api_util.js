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

export const createFollow = (data) => {
  return $.ajax({
    method: 'POST',
    url: '/api/user_follows',
    data: { data },
  });
};

export const deleteFollow = (data) => {
  return $.ajax({
    method: 'DELETE',
    url: `/api/user_follows/${data.user_id}`,
    data: { data }
  });
};
