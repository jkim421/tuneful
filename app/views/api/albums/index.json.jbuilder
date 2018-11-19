@albums.each do |album|
  json.partial! 'api/albums/album', album: album, songs: album.songs, artist: album.artist, albums: @albums
end
