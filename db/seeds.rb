# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artist.destroy_all
Genre.destroy_all
Album.destroy_all
Song.destroy_all

john = User.create!(username: 'john', password: 'password', email: 'jkim21@pm.me')
demo = User.create!(username: 'demo', password: 'password', email: 'demo@demo.com')
pierce = User.create!(username:'pierce', password: 'password', email: 'piercemurphymusic@gmail.com')
agrarian = User.create!(username:'agrarians', password: 'password', email: 'agrarians@gmail.com')

bleatingedge = Artist.create!(user_id: john.id, name: 'bleatingedge', location: 'New York, NY', bio: 'We Bleat For Music')
pierce_murphy = Artist.create!(user_id: pierce.id, name: "Pierce Murphy", location: 'Denver, CO')
agrarians = Artist.create!(user_id: agrarian.id, name: "The Agrarians", location: 'Raleigh, NC')

rock = Genre.create!(name: 'Rock')
blues = Genre.create!(name: 'Blues')
pop = Genre.create!(name: 'Pop');
folk = Genre.create!(name: 'Folk');

to_japan = Album.create!(artist_id: pierce_murphy.id, title: 'To Japan', genre_id: rock.id, featured: true, description: "Written in Japan in 2014, '来日 / To Japan' is the story of a journey through that beautiful country in search for a way to spare a blossoming love from the wake of the world.")
to_japan1 = Song.create!(album_id: to_japan.id, title: "Introduction", track_num: 1)
to_japan2 = Song.create!(album_id: to_japan.id, title: "So Little Of The World", track_num: 2)
to_japan3 = Song.create!(album_id: to_japan.id, title: "Tokyo To Kyoto", track_num: 3)
to_japan4 = Song.create!(album_id: to_japan.id, title: "Nightingales", track_num: 4)
to_japan5 = Song.create!(album_id: to_japan.id, title: "Kyoto To Osaka", track_num: 5)
to_japan6 = Song.create!(album_id: to_japan.id, title: "Shinsaibashi", track_num: 6)
to_japan7 = Song.create!(album_id: to_japan.id, title: "Hiroshima", track_num: 7)
to_japan8 = Song.create!(album_id: to_japan.id, title: "Return To Tokyo", track_num: 8)
to_japan9 = Song.create!(album_id: to_japan.id, title: "Pacific Echoes", track_num: 9)
to_japan10 = Song.create!(album_id: to_japan.id, title: "Epilogue", track_num: 10)

this_isnt_magic  = Album.create!(artist_id: pierce_murphy.id, title: "This Isn't Magic", genre_id: blues.id, featured: true, description: "It may not be magic, but it's definitely magical.")
this_isnt_magic1 = Song.create!(album_id: this_isnt_magic.id, title: "If You Won't Choose Me", track_num: 1)
this_isnt_magic2 = Song.create!(album_id: this_isnt_magic.id, title: "Just Give It Time", track_num: 2)
this_isnt_magic3 = Song.create!(album_id: this_isnt_magic.id, title: "Try To Be Nice", track_num: 3)
this_isnt_magic4 = Song.create!(album_id: this_isnt_magic.id, title: "Rondo", track_num: 4)
this_isnt_magic5 = Song.create!(album_id: this_isnt_magic.id, title: "Hey Mercy", track_num: 5)
this_isnt_magic6 = Song.create!(album_id: this_isnt_magic.id, title: "Will You Whisper", track_num: 6)

nighthawks  = Album.create!(artist_id: pierce_murphy.id, title: "Nighthawks EP", genre_id: pop.id, featured: true, description: "Nighthawks is a 1942 oil on canvas painting by Edward Hopper that portrays people in a downtown diner late at night.")
nighthawks1 = Song.create!(album_id: nighthawks.id, title: "Mad About You", track_num: 1)
nighthawks2 = Song.create!(album_id: nighthawks.id, title: "Orfeo", track_num: 2)
nighthawks3 = Song.create!(album_id: nighthawks.id, title: "Nighthawks", track_num: 3)
nighthawks4 = Song.create!(album_id: nighthawks.id, title: "Versailles", track_num: 4)

familyband  = Album.create!(artist_id: agrarians.id, title: "Family Band", genre_id: folk.id, featured: true, description: "Songs written and recorded from February 2017 - February 2018.  These songs are for Al, The Terror Twinnes, Grammar, and Louis.")
familyband1 = Song.create!(album_id: familyband.id, title: "(We) The(e) Children", track_num: 1)
familyband2 = Song.create!(album_id: familyband.id, title: "You're the One!", track_num: 2)
familyband3 = Song.create!(album_id: familyband.id, title: "The(se) Terror Twin(ne)s", track_num: 3)
familyband4 = Song.create!(album_id: familyband.id, title: "And Decades Now", track_num: 4)
familyband5 = Song.create!(album_id: familyband.id, title: "Weaken Me, Angel", track_num: 5)

bleatforit  = Album.create!(artist_id: bleatingedge.id, title: "Bleat For It", genre_id: rock.id, featured: false, description: "They bleat for you; we bleat for them.")
bleatforit1 = Song.create!(album_id: bleatforit.id, title: "We Bleat", track_num: 1)

john_follow1 = UserFollow.create!(user_id: john.id, artist_id: pierce_murphy.id)
john_follow2 = UserFollow.create!(user_id: john.id, artist_id: agrarians.id)

john_collection1 = UserCollectionAlbum.create!(user_id: john.id, album_id: to_japan.id)
john_collection2 = UserCollectionAlbum.create!(user_id: john.id, album_id: nighthawks.id)
john_collection3 = UserCollectionAlbum.create!(user_id: john.id, album_id: familyband.id)
