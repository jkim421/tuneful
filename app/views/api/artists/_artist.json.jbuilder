json.extract! artist, :id, :user_id, :name, :bio, :location
json.photo_url url_for(artist.photo) if artist.photo.attached?
json.cover_photo_url url_for(artist.cover_photo) if artist.cover_photo.attached?
json.album_ids albums.map{ |album| album.id }
