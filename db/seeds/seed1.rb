User.destroy_all
Artist.destroy_all
Genre.destroy_all
Album.destroy_all
Song.destroy_all
UserCollectionAlbum.destroy_all
UserFollow.destroy_all

rock = Genre.create!(name: "Rock")
pop = Genre.create!(name: "Pop")
jazz = Genre.create!(name: "Jazz")
electronic = Genre.create!(name: "Electronic")
classical = Genre.create!(name: "Classical")
blues = Genre.create!(name: "Blues")
funk = Genre.create!(name: "Funk")

jahzzar = User.create!(username: "jahzzar", password: "password", email: "jahzzar@gmail.com")
loboloco = User.create!(username: "loboloco", password: "password", email: "loboloco@gmail.com")
nctrnm = User.create!(username: "nctrnm", password: "password", email: "nctrnm@gmail.com")
oedipussy = User.create!(username: "oedipussy", password: "password", email: "oedipussy@gmail.com")
piercemurphy = User.create!(username: "pierce", password: "password", email: "piercemurphy@gmail.com")
podingtonbear = User.create!(username: "podington", password: "password", email: "podingtonbear@gmail.com")
revolutionvoid = User.create!(username: "revolutionvoid", password: "password", email: "revolutionvoid@gmail.com")
theagrarians = User.create!(username: "agrarians", password: "password", email: "theagrarians@gmail.com")

demo = User.new(username: "Demo", password: "password", email: "demo@gmail.com")
demo_profile = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/demo.jpg")
demo.photo.attach(io: demo_profile, filename: "demo.jpg")
demo.save!


jahzzar_art = Artist.new(user_id: jahzzar.id, name: "Jahzzar", location: "Gijón, Asturias", website: "www.betterwithmusic.com", bio: "Jahzzar’s music offers sounds for ideas, to enjoy and share, to use. No matter the language, just communicate.")
loboloco_art = Artist.new(user_id: loboloco.id, name: "Lobo Loco", location: "Göppingen, Germany", website: "www.musikbrause.de", bio: "")
nctrnm_art = Artist.new(user_id: nctrnm.id, name: "Nctrnm", location: "Colton, CA", website: "www.soundcloud.com/nctrnm", bio: "i'm nctrnm: singer, songwriter, experimental/electronic producer.")
oedipussy_art = Artist.new(user_id: oedipussy.id, name: "Oedipussy", location: "San Francisco, CA", website: "", bio: "")
piercemurphy_art = Artist.new(user_id: piercemurphy.id, name: "Pierce Murphy", location: "Denver, CO", website: "www.piercemurphymusic.com", bio: "Wherever you see me, I'm looking forward to sharing some music with you.")
podingtonbear_art = Artist.new(user_id: podingtonbear.id, name: "Podington Bear", location: "Portland, OR", website: "www.soundofpicture.com", bio: "A mysterious bear named Podington took the Internet by storm in 2007, releasing three beautifully crafted songs a week. ")
revolutionvoid_art = Artist.new(user_id: revolutionvoid.id, name: "Revolution Void", location: "Seattle, WA", website: "www.revolutionvoid.com", bio: "Revolution Void is the moniker of 23-year-old producer and jazz pianist Jonah Dempcy. ")
theagrarians_art = Artist.new(user_id: theagrarians.id, name: "The Agrarians", location: "Baltimore, MD", website: "www.enjoplinrealetime.blogspot.com", bio: "")

jahzzar_art_profile = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/jahzzar_profile.jpg")
jahzzar_art.photo.attach(io: jahzzar_art_profile, filename: "jahzzar_profile.jpg")

jahzzar_art_cover = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/jahzzar_cover.jpg")
jahzzar_art.cover_photo.attach(io: jahzzar_art_cover, filename: "jahzzar_cover.jpg")
jahzzar_art.save!

loboloco_art_profile = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/loboloco_profile.jpg")
loboloco_art.photo.attach(io: loboloco_art_profile, filename: "loboloco_profile.jpg")

loboloco_art_cover = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/loboloco_cover.jpg")
loboloco_art.cover_photo.attach(io: loboloco_art_cover, filename: "loboloco_cover.jpg")
loboloco_art.save!

nctrnm_art_profile = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/nctrnm_profile.jpg")
nctrnm_art.photo.attach(io: nctrnm_art_profile, filename: "nctrnm_profile.jpg")

nctrnm_art_cover = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/nctrnm_cover.jpg")
nctrnm_art.cover_photo.attach(io: nctrnm_art_cover, filename: "nctrnm_cover.jpg")
nctrnm_art.save!

oedipussy_art_profile = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/oedipussy_profile.jpg")
oedipussy_art.photo.attach(io: oedipussy_art_profile, filename: "oedipussy_profile.jpg")

oedipussy_art_cover = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/oedipussy_cover.jpg")
oedipussy_art.cover_photo.attach(io: oedipussy_art_cover, filename: "oedipussy_cover.jpg")
oedipussy_art.save!

piercemurphy_art_profile = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/pierce_profile.jpg")
piercemurphy_art.photo.attach(io: piercemurphy_art_profile, filename: "pierce_profile.jpg")

piercemurphy_art_cover = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/pierce_cover.jpg")
piercemurphy_art.cover_photo.attach(io: piercemurphy_art_cover, filename: "pierce_cover.jpg")
piercemurphy_art.save!

podingtonbear_art_profile = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/podington_profile.jpg")
podingtonbear_art.photo.attach(io: podingtonbear_art_profile, filename: "podington_profile.jpg")

podingtonbear_art_cover = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/podington_cover.jpg")
podingtonbear_art.cover_photo.attach(io: podingtonbear_art_cover, filename: "podington_cover.jpg")
podingtonbear_art.save!

revolutionvoid_art_profile = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/revolution_profile.jpg")
revolutionvoid_art.photo.attach(io: revolutionvoid_art_profile, filename: "revolution_profile.jpg")

revolutionvoid_art_cover = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/revolution_cover.jpg")
revolutionvoid_art.cover_photo.attach(io: revolutionvoid_art_cover, filename: "revolution_cover.jpg")
revolutionvoid_art.save!

theagrarians_art_profile = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/agrarian_profile.jpg")
theagrarians_art.photo.attach(io: theagrarians_art_profile, filename: "agrarian_profile.jpg")

theagrarians_art_cover = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/agrarian_cover.jpg")
theagrarians_art.cover_photo.attach(io: theagrarians_art_cover, filename: "agrarian_cover.jpg")
theagrarians_art.save!


hificitytales = Album.new(artist_id: jahzzar_art.id, title: "HiFi City Tales", genre_id: electronic.id, description: "Courage of our questions light years preserve and cherish that pale blue dot from which we spring Jean-François Champollion hundreds of thousands.", release_date: 2009)
kuddelmuddel = Album.new(artist_id: jahzzar_art.id, title: "Kuddelmuddel", genre_id: funk.id, description: "Great turbulent clouds billions upon billions of brilliant syntheses made in the interiors of collapsing stars dispassionate extraterrestrial observer inconspicuous ", release_date: 2006)
supers = Album.new(artist_id: jahzzar_art.id, title: "Super", genre_id: funk.id, description: "Champollion vastness is bearable only through love Hypatia not a sunrise but a galaxyrise a very small stage in a vast cosmic arena the ash of stellar alchemy.", release_date: 2005)
littlecaesar = Album.new(artist_id: loboloco_art.id, title: "LITTLE CAESAR", genre_id: jazz.id, description: "Globular star cluster billions upon billions made in the interiors of collapsing stars tingling of the spine muse about Vangelis", release_date: 2006)
retro = Album.new(artist_id: loboloco_art.id, title: "RETRO", genre_id: jazz.id, description: "A very small stage in a vast cosmic arena hundreds of thousands bits of moving fluff vanquish the impossible preserve and cherish that pale blue dot", release_date: 2013)
vagabond = Album.new(artist_id: loboloco_art.id, title: "Vagabond", genre_id: blues.id, description: "The only home we've ever known rich in heavy atoms finite but unbounded a mote of dust suspended in a sunbeam extraordinary claims require extraordinary evidence courage of our questions", release_date: 2005)
acuerdo = Album.new(artist_id: nctrnm_art.id, title: "ACUERDO", genre_id: electronic.id, description: "Tunguska event a very small stage in a vast cosmic arena worldlets a billion trillion", release_date: 2006)
equinox = Album.new(artist_id: nctrnm_art.id, title: "EQUINOX", genre_id: electronic.id, description: "Sea of Tranquility citizens of distant epochs descended from astronomers kindling the energy hidden in matter bits of moving fluff ", release_date: 2007)
founded = Album.new(artist_id: nctrnm_art.id, title: "FOUNDED", genre_id: electronic.id, description: "Stirred by starlight a still more glorious dawn awaits take root and flourish the sky calls to us stirred by starlight dream of the mind's eye", release_date: 2008)

hificitytales_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/hifi.jpg")
hificitytales.photo.attach(io: hificitytales_photo, filename: "hifi.jpg")
hificitytales.save!
kuddelmuddel_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/kuddelmuddel.jpg")
kuddelmuddel.photo.attach(io: kuddelmuddel_photo, filename: "kuddelmuddel.jpg")
kuddelmuddel.save!
scenesfromthezoo_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/scenesfrom.jpg")
scenesfromthezoo.photo.attach(io: scenesfromthezoo_photo, filename: "scenesfrom.jpg")
scenesfromthezoo.save!
supers_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/super.jpg")
supers.photo.attach(io: supers_photo, filename: "super.jpg")
supers.save!
littlecaesar_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/littlecaesar.jpg")
littlecaesar.photo.attach(io: littlecaesar_photo, filename: "littlecaesar.jpg")
littlecaesar.save!
retro_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/retro.jpg")
retro.photo.attach(io: retro_photo, filename: "retro.jpg")
retro.save!
vagabond_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/vagabond.jpg")
vagabond.photo.attach(io: vagabond_photo, filename: "vagabond.jpg")
vagabond.save!
acuerdo_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/acuerdo.jpg")
acuerdo.photo.attach(io: acuerdo_photo, filename: "acuerdo.jpg")
acuerdo.save!
equinox_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/equinox.jpg")
equinox.photo.attach(io: equinox_photo, filename: "equinox.jpg")
equinox.save!
founded_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/founded.jpg")
founded.photo.attach(io: founded_photo, filename: "founded.jpg")
founded.save!
n3_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/n3.jpg")
n3.photo.attach(io: n3_photo, filename: "n3.jpg")
n3.save!
death_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/death.jpg")
death.photo.attach(io: death_photo, filename: "death.jpg")
death.save!
oedipussy_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/oedipussy.jpg")
oedipussy.photo.attach(io: oedipussy_photo, filename: "oedipussy.jpg")
oedipussy.save!
nighthawksep_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/nighthawks.jpg")
nighthawksep.photo.attach(io: nighthawksep_photo, filename: "nighthawks.jpg")
nighthawksep.save!
thisisntmagic_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/magic.jpg")
thisisntmagic.photo.attach(io: thisisntmagic_photo, filename: "magic.jpg")
thisisntmagic.save!
tojapan_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/to_japan.jpg")
tojapan.photo.attach(io: tojapan_photo, filename: "to_japan.jpg")
tojapan.save!
bonvoyage_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/bon_voyage.jpg")
bonvoyage.photo.attach(io: bonvoyage_photo, filename: "bon_voyage.jpg")
bonvoyage.save!
nocturnes_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/nocturnes.jpg")
nocturnes.photo.attach(io: nocturnes_photo, filename: "nocturnes.jpg")
nocturnes.save!
rainy_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/rainy.jpg")
rainy.photo.attach(io: rainy_photo, filename: "rainy.jpg")
rainy.save!
thepoliticsofdesire_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/politics.jpg")
thepoliticsofdesire.photo.attach(io: thepoliticsofdesire_photo, filename: "politics.jpg")
thepoliticsofdesire.save!
familyband_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/family.jpg")
familyband.photo.attach(io: familyband_photo, filename: "family.jpg")
familyband.save!
lastjoplinblues_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/last_joplin.jpg")
lastjoplinblues.photo.attach(io: lastjoplinblues_photo, filename: "last_joplin.jpg")
lastjoplinblues.save!

hotpotdancing_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/hotpot.jpg")
hotpotdancing.photo.attach(io: hotpotdancing_photo, filename: "hotpot.jpg")
hotpotdancing.save!
oldermoodscolderbloods_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/older_moods.jpg")
oldermoodscolderbloods.photo.attach(io: oldermoodscolderbloods_photo, filename: "older_moods.jpg")
oldermoodscolderbloods.save!
passages_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/passages.jpg")
passages.photo.attach(io: passages_photo, filename: "passages.jpg")
passages.save!
threadsoul_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/thread.jpg")
threadsoul.photo.attach(io: threadsoul_photo, filename: "thread.jpg")
threadsoul.save!
lifespan_photo = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/life_span.jpg")
lifespan.photo.attach(io: lifespan_photo, filename: "life_span.jpg")
lifespan.save!

hificitytales1 = Song.create!(album_id: hificitytales.id, title: "Take a Walk", track_num: 1)
hificitytales2 = Song.create!(album_id: hificitytales.id, title: "Vacuum", track_num: 2)
hificitytales3 = Song.create!(album_id: hificitytales.id, title: "Bodies", track_num: 3)
hificitytales4 = Song.create!(album_id: hificitytales.id, title: "Hideaway", track_num: 4)
hificitytales5 = Song.create!(album_id: hificitytales.id, title: "Botanic Gardens", track_num: 5)

hificitytales1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/HiFi_City_Tales/1_Take_a_Walk.mp3")
hificitytales2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/HiFi_City_Tales/2_Vacuum.mp3")
hificitytales3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/HiFi_City_Tales/3_Bodies.mp3")
hificitytales4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/HiFi_City_Tales/4_Hideaway.mp3")
hificitytales5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/HiFi_City_Tales/5_Botanic_Garden.mp3")
hificitytales1.audio_file.attach(io: hificitytales1_song, filename: "1_Take_a_Walk.mp3")
hificitytales2.audio_file.attach(io: hificitytales2_song, filename: "2_Vacuum.mp3")
hificitytales3.audio_file.attach(io: hificitytales3_song, filename: "3_Bodies.mp3")
hificitytales4.audio_file.attach(io: hificitytales4_song, filename: "4_Hideaway.mp3")
hificitytales5.audio_file.attach(io: hificitytales5_song, filename: "5_Botanic_Garden.mp3")
hificitytales1.save!
hificitytales2.save!
hificitytales3.save!
hificitytales4.save!
hificitytales5.save!

kuddelmuddel1 = Song.create!(album_id: kuddelmuddel.id, title: "2014", track_num: 1)
kuddelmuddel2 = Song.create!(album_id: kuddelmuddel.id, title: "Forgiven Not Forgotten", track_num: 2)
kuddelmuddel3 = Song.create!(album_id: kuddelmuddel.id, title: "Invisible", track_num: 3)
kuddelmuddel4 = Song.create!(album_id: kuddelmuddel.id, title: "LH", track_num: 4)
kuddelmuddel5 = Song.create!(album_id: kuddelmuddel.id, title: "Missing You", track_num: 5)

kuddelmuddel1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/kuddelmuddel/1_2014.mp3")
kuddelmuddel2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/kuddelmuddel/2_Forgiven_Not_Forgotten.mp3")
kuddelmuddel3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/kuddelmuddel/3_Invisible.mp3")
kuddelmuddel4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/kuddelmuddel/4_LH.mp3")
kuddelmuddel5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/kuddelmuddel/5_Missing_You.mp3")
kuddelmuddel1.audio_file.attach(io: kuddelmuddel1_song, filename: "1_2014.mp3")
kuddelmuddel2.audio_file.attach(io: kuddelmuddel2_song, filename: "2_Forgiven_Not_Forgotten.mp3")
kuddelmuddel3.audio_file.attach(io: kuddelmuddel3_song, filename: "3_Invisible.mp3")
kuddelmuddel4.audio_file.attach(io: kuddelmuddel4_song, filename: "4_LH.mp3")
kuddelmuddel5.audio_file.attach(io: kuddelmuddel5_song, filename: "5_Missing_You.mp3")
kuddelmuddel1.save!
kuddelmuddel2.save!
kuddelmuddel3.save!
kuddelmuddel4.save!
kuddelmuddel5.save!

supers1 = Song.create!(album_id: supers.id, title: "Shake It", track_num: 1)
supers2 = Song.create!(album_id: supers.id, title: "Chiefs", track_num: 2)
supers3 = Song.create!(album_id: supers.id, title: "No Control", track_num: 3)
supers4 = Song.create!(album_id: supers.id, title: "Word Up", track_num: 4)
supers5 = Song.create!(album_id: supers.id, title: "Comedie", track_num: 5)

supers1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/super/1_Shake_It.mp3")
supers2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/super/2_Chiefs.mp3")
supers3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/super/3_No_Control.mp3")
supers4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/super/4_Word_Up.mp3")
supers5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/super/5_Comedie.mp3")
supers1.audio_file.attach(io: supers1_song, filename: "1_Shake_It.mp3")
supers2.audio_file.attach(io: supers2_song, filename: "2_Chiefs.mp3")
supers3.audio_file.attach(io: supers3_song, filename: "3_No_Control.mp3")
supers4.audio_file.attach(io: supers4_song, filename: "4_Word_Up.mp3")
supers5.audio_file.attach(io: supers5_song, filename: "5_Comedie.mp3")
supers1.save!
supers2.save!
supers3.save!
supers4.save!
supers5.save!

littlecaesar1 = Song.create!(album_id: littlecaesar.id, title: "Little Caesar Bandello", track_num: 1)
littlecaesar2 = Song.create!(album_id: littlecaesar.id, title: "Madame Ragadance", track_num: 2)
littlecaesar3 = Song.create!(album_id: littlecaesar.id, title: "Cave Jogging", track_num: 3)
littlecaesar4 = Song.create!(album_id: littlecaesar.id, title: "Grandpas Racing Duel", track_num: 4)
littlecaesar5 = Song.create!(album_id: littlecaesar.id, title: "Lotterie Numbers", track_num: 5)

littlecaesar1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/little_caesar/1_Little_Caesar_Bandello.mp3")
littlecaesar2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/little_caesar/2_Madame_Ragadance.mp3")
littlecaesar3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/little_caesar/3_Cave_Jogging.mp3")
littlecaesar4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/little_caesar/4_Grandpas_Racing_Duel.mp3")
littlecaesar5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/little_caesar/5_Lotterie_Numbers.mp3")
littlecaesar1.audio_file.attach(io: littlecaesar1_song, filename: "1_Little_Caesar_Bandello.mp3")
littlecaesar2.audio_file.attach(io: littlecaesar2_song, filename: "2_Madame_Ragadance.mp3")
littlecaesar3.audio_file.attach(io: littlecaesar3_song, filename: "3_Cave_Jogging.mp3")
littlecaesar4.audio_file.attach(io: littlecaesar4_song, filename: "4_Grandpas_Racing_Duel.mp3")
littlecaesar5.audio_file.attach(io: littlecaesar5_song, filename: "5_Lotterie_Numbers.mp3")
littlecaesar1.save!
littlecaesar2.save!
littlecaesar3.save!
littlecaesar4.save!
littlecaesar5.save!

retro1 = Song.create!(album_id: retro.id, title: "After war", track_num: 1)
retro2 = Song.create!(album_id: retro.id, title: "Malte Junior", track_num: 2)
retro3 = Song.create!(album_id: retro.id, title: "History Jingle", track_num: 3)
retro4 = Song.create!(album_id: retro.id, title: "Malte Senior", track_num: 4)
retro5 = Song.create!(album_id: retro.id, title: "Sunday Picnic", track_num: 5)

retro1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/retro/1_After_war.mp3")
retro2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/retro/2_Malte_Junior.mp3")
retro3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/retro/3_History_Jingle.mp3")
retro4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/retro/4_Malte_Senior.mp3")
retro5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/retro/5_Sunday_Picnic.mp3")
retro1.audio_file.attach(io: retro1_song, filename: "1_After_war.mp3")
retro2.audio_file.attach(io: retro2_song, filename: "2_Malte_Junior.mp3")
retro3.audio_file.attach(io: retro3_song, filename: "3_History_Jingle.mp3")
retro4.audio_file.attach(io: retro4_song, filename: "4_Malte_Senior.mp3")
retro5.audio_file.attach(io: retro5_song, filename: "5_Sunday_Picnic.mp3")
retro1.save!
retro2.save!
retro3.save!
retro4.save!
retro5.save!

vagabond1 = Song.create!(album_id: vagabond.id, title: "Just a Moment", track_num: 1)
vagabond2 = Song.create!(album_id: vagabond.id, title: "Hey Go", track_num: 2)
vagabond3 = Song.create!(album_id: vagabond.id, title: "Psychedelic Blues", track_num: 3)
vagabond4 = Song.create!(album_id: vagabond.id, title: "Double Decker", track_num: 4)
vagabond5 = Song.create!(album_id: vagabond.id, title: "The First Moment", track_num: 5)

vagabond1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/vagabond/1_Just_a_Moment.mp3")
vagabond2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/vagabond/2_Hey_Go.mp3")
vagabond3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/vagabond/3_Psychedelic_Blues.mp3")
vagabond4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/vagabond/4_Double_Decker.mp3")
vagabond5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/vagabond/5_The_First_Moment.mp3")
vagabond1.audio_file.attach(io: vagabond1_song, filename: "1_Just_a_Moment.mp3")
vagabond2.audio_file.attach(io: vagabond2_song, filename: "2_Hey_Go.mp3")
vagabond3.audio_file.attach(io: vagabond3_song, filename: "3_Psychedelic_Blues.mp3")
vagabond4.audio_file.attach(io: vagabond4_song, filename: "4_Double_Decker.mp3")
vagabond5.audio_file.attach(io: vagabond5_song, filename: "5_The_First_Moment.mp3")
vagabond1.save!
vagabond2.save!
vagabond3.save!
vagabond4.save!
vagabond5.save!

acuerdo1 = Song.create!(album_id: acuerdo.id, title: "Friction", track_num: 1)
acuerdo2 = Song.create!(album_id: acuerdo.id, title: "Bubble", track_num: 2)
acuerdo3 = Song.create!(album_id: acuerdo.id, title: "Rider", track_num: 3)

acuerdo1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/acuerdo/1_Friction.mp3")
acuerdo2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/acuerdo/2_Bubble.mp3")
acuerdo3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/acuerdo/3_Rider.mp3")
acuerdo1.audio_file.attach(io: acuerdo1_song, filename: "1_Friction.mp3")
acuerdo2.audio_file.attach(io: acuerdo2_song, filename: "2_Bubble.mp3")
acuerdo3.audio_file.attach(io: acuerdo3_song, filename: "3_Rider.mp3")
acuerdo1.save!
acuerdo2.save!
acuerdo3.save!

equinox1 = Song.create!(album_id: equinox.id, title: "Recess", track_num: 1)
equinox2 = Song.create!(album_id: equinox.id, title: "Stride", track_num: 2)
equinox3 = Song.create!(album_id: equinox.id, title: "Flight", track_num: 3)
equinox4 = Song.create!(album_id: equinox.id, title: "Unit", track_num: 4)
equinox5 = Song.create!(album_id: equinox.id, title: "Phantom", track_num: 5)

equinox1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/equinox/1_Recess.mp3")
equinox2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/equinox/2_Stride.mp3")
equinox3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/equinox/3_Flight.mp3")
equinox4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/equinox/4_Unit.mp3")
equinox5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/equinox/5_Phantom.mp3")
equinox1.audio_file.attach(io: equinox1_song, filename: "1_Recess.mp3")
equinox2.audio_file.attach(io: equinox2_song, filename: "2_Stride.mp3")
equinox3.audio_file.attach(io: equinox3_song, filename: "3_Flight.mp3")
equinox4.audio_file.attach(io: equinox4_song, filename: "4_Unit.mp3")
equinox5.audio_file.attach(io: equinox5_song, filename: "5_Phantom.mp3")
equinox1.save!
equinox2.save!
equinox3.save!
equinox4.save!
equinox5.save!

founded1 = Song.create!(album_id: founded.id, title: "Concern", track_num: 1)
founded2 = Song.create!(album_id: founded.id, title: "Dealer", track_num: 2)
founded3 = Song.create!(album_id: founded.id, title: "Found", track_num: 3)
founded4 = Song.create!(album_id: founded.id, title: "La Femme", track_num: 4)
founded5 = Song.create!(album_id: founded.id, title: "True", track_num: 5)

founded1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/founded/1_Concern.mp3")
founded2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/founded/2_Dealer.mp3")
founded3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/founded/3_Found.mp3")
founded4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/founded/4_La_Femme.mp3")
founded5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/founded/5_True.mp3")
founded1.audio_file.attach(io: founded1_song, filename: "1_Concern.mp3")
founded2.audio_file.attach(io: founded2_song, filename: "2_Dealer.mp3")
founded3.audio_file.attach(io: founded3_song, filename: "3_Found.mp3")
founded4.audio_file.attach(io: founded4_song, filename: "4_La_Femme.mp3")
founded5.audio_file.attach(io: founded5_song, filename: "5_True.mp3")
founded1.save!
founded2.save!
founded3.save!
founded4.save!
founded5.save!
