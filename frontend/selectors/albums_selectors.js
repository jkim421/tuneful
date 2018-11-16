export const selectFeatures = (albums) => {
  let albumVals = Object.values(albums);
  let features = [];
  albumVals.forEach( (album) => {
    if (album.featured === true) {
      features.push(album);
    }
  });
  return features;
};

export const selectNew = (albums = {}, keys = []) => {
  let albumVals = Object.values(albums);
  const newAlbums = keys.map( (id) => {
    return albums[id];
  });
  return newAlbums;
};
