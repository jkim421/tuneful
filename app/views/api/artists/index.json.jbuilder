@artists.each do |artist|
  json.set! artist.id do
    json.partial! 'api/artists/artist', artist: artist, albums: artist.albums
  end
end
