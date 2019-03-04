json.albums do
  json.set! album.id do
    json.extract! album, :id, :title, :artist_id, :description, :featured, :release_date, :genre_id
    json.artist album.artist.name
    json.genre album.genre.name
    json.photo_url url_for(album.photo) if album.photo.attached?
    json.song_ids album.songs.map{ |song| song.id }
    json.album_comments album.album_comments.ids
  end
end

json.artists do
  json.set! album.artist.id do
    json.extract! album.artist, :id, :user_id, :name, :bio, :location, :website
    json.photo_url url_for(album.artist.photo) if album.artist.photo.attached?
    json.cover_photo_url url_for(album.artist.cover_photo) if album.artist.cover_photo.attached?
    json.album_ids album.artist.album_ids
  end
end

json.album_comments do
  json.set! album.id, album.album_comments
end

json.users do
  album.album_comments.each do |comment|
    json.set! comment.user_id, comment.user
  end
end
