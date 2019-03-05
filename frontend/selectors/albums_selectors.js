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
  let discIds = albumIds.filter( id => albums[id]);
  const discog = discIds.map( id => albums[id]);
  debugger
  return discog;
};

export const selectCollection = (albums = {}, albumIds = []) => {
  let collIds = albumIds.filter( id => albums[id]);
  const collection = collIds.map( id => albums[id]);
  return collection;
};

export const selectGenre = (albums={}, genre=null) => {
  let albumVals = Object.values(albums);
  const genreAlbums = albumVals.filter( album => album.genre === genre );
  return genreAlbums.reverse();
};
