json.albums do
  json.array! @albums_ex.each do |album|
    json.extract! album, :id, :title, :release_date
    json.artist album.artist.name
  end
  json.array! @albums_par.each do |album|
    json.extract! album, :id, :title, :release_date
    json.artist album.artist.name
  end
end

json.artists do
  json.array! @artists_ex.each do |artist|
    json.extract! artist, :id, :name, :location
  end
  json.array! @artists_par.each do |artist|
    json.extract! artist, :id, :name, :location
  end
end
