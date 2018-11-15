# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

john = User.create!(username: 'john', password: 'password', email: 'jkim21@pm.me')
demo = User.create!(username: 'demo', password: 'password', email: 'demo@demo.com')
pierce = User.create!(username:'pierce', password: 'password', email: 'piercemurphymusic@gmail.com')

bleatingedge = Artist.create!(user_id: john.id, name: 'bleatingedge', location: 'New York, NY', bio: 'We Bleat For Music')
pierce_murphy = Artist.create!(user_id: pierce.id, name: "Pierce Murphy", location: 'Denver, CO')

rock = Genre.create!(name: 'Rock')

to_japan = Album.create!(artist_id: pierce_murphy.id, title: 'To Japan', genre_id: rock.id)
to_japan1 = Song.create!(album_id: to_japan.id, title: "Introduction", track_num: 1)
to_japan1 = Song.create!(album_id: to_japan.id, title: "So Little Of The World", track_num: 2)
to_japan1 = Song.create!(album_id: to_japan.id, title: "Tokyo To Kyoto", track_num: 3)
to_japan1 = Song.create!(album_id: to_japan.id, title: "Nightingales", track_num: 4)
to_japan1 = Song.create!(album_id: to_japan.id, title: "Kyoto To Osaka", track_num: 5)
to_japan1 = Song.create!(album_id: to_japan.id, title: "Shinsaibashi", track_num: 6)
to_japan1 = Song.create!(album_id: to_japan.id, title: "Hiroshima", track_num: 7)
to_japan1 = Song.create!(album_id: to_japan.id, title: "Return To Tokyo", track_num: 8)
to_japan1 = Song.create!(album_id: to_japan.id, title: "Pacific Echoes", track_num: 9)
to_japan1 = Song.create!(album_id: to_japan.id, title: "Epilogue", track_num: 10)
