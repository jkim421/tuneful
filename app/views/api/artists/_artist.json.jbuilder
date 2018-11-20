json.extract! artist, :id, :user_id, :name, :bio, :location
json.photo_url url_for(artist.photo)
json.cover_photo_url url_for(artist.cover_photo)
json.album_ids albums.map{ |album| album.id }
