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
