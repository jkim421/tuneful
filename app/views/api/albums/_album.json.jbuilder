json.albums do
  json.set! album.id do
    json.extract! album, :id, :title, :artist_id, :description, :featured
    json.artist album.artist.name
    json.genre album.genre.name
    json.song_ids songs.map{ |song| song.id }
  end
end

json.artists do
  json.set! artist.id do
    json.extract! artist, :id, :user_id, :name, :bio, :location, :picture_url
    json.album_ids artist.album_ids
  end
end
