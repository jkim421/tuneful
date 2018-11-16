@albums.each do |album|
  json.set! album.id do
    json.extract! album, :id, :title, :artist_id, :description
    json.artist album.artist.name
    json.genre album.genre.name
  end
end
