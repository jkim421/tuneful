export const selectFollows = (artists = {}, artistIds = []) => {
  let artistVals = Object.values(artists);
  const follows = artistVals.filter( artist => artistIds.includes(artist.id) );
  return follows;
};
