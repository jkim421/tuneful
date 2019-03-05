export const selectFollows = (artists = {}, artistIds = []) => {
  let followIds = artistIds.filter( id => artists[id]);
  const follows = followIds.map( id => artists[id]);
  return follows;
};
