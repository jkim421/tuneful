json.albums do
  json.set! album.id do
    json.extract! album, :id, :title, :artist_id, :description, :featured, :release_date
    json.artist album.artist.name
    json.genre album.genre.name
    json.photo_url url_for(album.photo) if album.photo.attached?
    json.song_ids songs.map{ |song| song.id }
  end
end

json.artists do
  json.set! artist.id do
    json.extract! artist, :id, :user_id, :name, :bio, :location
    json.photo_url url_for(artist.photo) if artist.photo.attached?
    json.cover_photo_url url_for(artist.cover_photo) if artist.cover_photo.attached?
    json.album_ids artist.album_ids
  end
end
