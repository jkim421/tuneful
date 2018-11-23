json.albums do
  json.array! @albums.each do |album|
    json.extract! album, :id, :title, :release_date
    json.artist album.artist.name
  end
end

json.artists do
  json.array! @artists.each do |artist|
    json.extract! artist, :id, :name, :location
  end
end
