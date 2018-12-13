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

export const selectDiscog = (albums = {}, albumIds = []) => {
  let albumVals = Object.values(albums);
  const discog = albumVals.filter( album => albumIds.includes(album.id) );
  return discog;
};

export const selectCollection = (albums = {}, albumIds = []) => {
  let albumVals = Object.values(albums);
  const collection = albumVals.filter( album => albumIds.includes(album.id) );
  return collection;
};

export const selectGenre = (albums={}, genre=null) => {
  let albumVals = Object.values(albums);
  const genreAlbums = albumVals.filter( album => album.genre === genre );
  return genreAlbums;
};
