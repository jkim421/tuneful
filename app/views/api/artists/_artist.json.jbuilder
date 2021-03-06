json.extract! artist, :id, :user_id, :name, :bio, :location, :website
json.photo_url url_for(artist.photo) if artist.photo.attached?
json.cover_photo_url url_for(artist.cover_photo) if artist.cover_photo.attached?
json.album_ids artist.albums.sort{|x,y| y.created_at <=> x.created_at}.map{ |album| album.id }
