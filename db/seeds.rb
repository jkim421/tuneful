# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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
death = Album.new(artist_id: oedipussy_art.id, title: "Death", genre_id: pop.id, description: "Star stuff harvesting star light invent the universe a mote of dust suspended in a sunbeam how far away concept of the number one", release_date: 2011)
oedipussy = Album.new(artist_id: oedipussy_art.id, title: "Oedipussy", genre_id: pop.id, description: "Dispassionate extraterrestrial observer extraplanetary preserve and cherish that pale blue dot shores of the cosmic ocean dream of the mind's eye birth", release_date: 2009)
nighthawksep = Album.new(artist_id: piercemurphy_art.id, title: "Nighthawks EP", genre_id: rock.id, description: "Extraordinary claims require extraordinary evidence as a patch of light paroxysm of global death rings of Uranus", release_date: 2014)
thisisntmagic = Album.new(artist_id: piercemurphy_art.id, title: "This Isn't Magic", genre_id: blues.id, description: "Two ghostly white figures in coveralls and helmets are soflty dancing concept", release_date: 2013)
bonvoyage = Album.new(artist_id: podingtonbear_art.id, title: "Bon Voyage", genre_id: jazz.id, description: "Flatland vanquish the impossible the ash of stellar alchemy. ", release_date: 2018)
nocturnes = Album.new(artist_id: podingtonbear_art.id, title: "Nocturnes", genre_id: classical.id, description: "Euclid network of wormholes preserve and cherish that pale blue dot a very small stage in a vast cosmic arena the sky calls to us star stuff harvesting star light.", release_date: 2012)
rainy = Album.new(artist_id: podingtonbear_art.id, title: "Rainy", genre_id: classical.id, description: "A still more glorious dawn awaits shores of the cosmic ocean of brilliant syntheses gathered by gravity Orion's sword prime number?", release_date: 2016)
thepoliticsofdesire = Album.new(artist_id: revolutionvoid_art.id, title: "The Politics of Desire", genre_id: pop.id, description: "Rich in mystery vanquish the impossible courage of our questions inconspicuous motes of rock and gas extraordinary claims", release_date: 2017)
lastjoplinblues = Album.new(artist_id: theagrarians_art.id, title: "Last Joplin Blues", genre_id: rock.id, description: "Paroxysm of global death Tunguska event cosmic fugue astonishment great turbulent clouds prime number. ", release_date: 2018)

familyband = Album.new(artist_id: theagrarians_art.id, title: "Family Band", genre_id: rock.id, description: "Laws of physics not a sunrise but a galaxyrise dream of the mind's eye radio telescope corpus callosum birth. ", release_date: 2006, featured: true)
scenesfromthezoo = Album.new(artist_id: jahzzar_art.id, title: "Scenes from the Zoo", genre_id: rock.id, description: "Something incredible is waiting to be known not a sunrise but a galaxyrise extraordinary claims require extraordinary evidence", release_date: 2017, featured: true)
n3 = Album.new(artist_id: nctrnm_art.id, title: "N3", genre_id: electronic.id, description: "Hearts of the stars Euclid science courage of our questions tingling of the spine finite but unbounded. Dispassionate extraterrestrial observer", release_date: 2018, featured: true)
tojapan = Album.new(artist_id: piercemurphy_art.id, title: "To Japan", genre_id: classical.id, description: "Hypatia worldlets gathered by gravity a mote of dust suspended in a sunbeam. Hearts of the stars a mote of dust", release_date: 2008, featured: true)

oldermoodscolderbloods = Album.new(artist_id: theagrarians_art.id, title: "Older Moods Colder Bloods", genre_id: rock.id, description: "Drake Equation hundreds of thousands science at the edge of forever a very small stage in a vast cosmic arena Sea of Tranquility", release_date: 2008)
lifespan = Album.new(artist_id: oedipussy_art.id, title: "Life Span", genre_id: pop.id, description: "Something incredible is waiting to be known globular star cluster great turbulent clouds citizens of distant epochs invent the universe with pretty stories for which there's little good evidence", release_date: 2013)
passages = Album.new(artist_id: podingtonbear_art.id, title: "Passages", genre_id: jazz.id, description: "Apollonius of Perga Jean-François Champollion rich in heavy atoms tingling of the spine bits of moving fluff a billion trillion. ", release_date: 2008)
hotpotdancing = Album.new(artist_id: loboloco_art.id, title: "Hot Pot Dancing", genre_id: pop.id, description: "Euclid kindling the energy hidden in matter descended from astronomers circumnavigated gathered by gravity ", release_date: 2018)
threadsoul = Album.new(artist_id: revolutionvoid_art.id, title: "Thread Soul", genre_id: jazz.id, description: "Citizens of distant epochs stirred by starlight vastness is bearable only through love across the centuries Sea of Tranquility stirred by starlight.", release_date: 2007)

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

death1 = Song.create!(album_id: death.id, title: "THey All Float", track_num: 1)
death2 = Song.create!(album_id: death.id, title: "13", track_num: 2)
death3 = Song.create!(album_id: death.id, title: "Hymen", track_num: 3)
death4 = Song.create!(album_id: death.id, title: "Medusa", track_num: 4)
death5 = Song.create!(album_id: death.id, title: "Slow Death", track_num: 5)

death1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/death/1_They_All_Float.mp3")
death2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/death/2_13.mp3")
death3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/death/3_Hymen.mp3")
death4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/death/4_Medusa.mp3")
death5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/death/5_Slow_Death.mp3")
death1.audio_file.attach(io: death1_song, filename: "1_They_All_Float.mp3")
death2.audio_file.attach(io: death2_song, filename: "2_13.mp3")
death3.audio_file.attach(io: death3_song, filename: "3_Hymen.mp3")
death4.audio_file.attach(io: death4_song, filename: "4_Medusa.mp3")
death5.audio_file.attach(io: death5_song, filename: "5_Slow_Death.mp3")
death1.save!
death2.save!
death3.save!
death4.save!
death5.save!

oedipussy1 = Song.create!(album_id: oedipussy.id, title: "Summit WishRelic", track_num: 1)
oedipussy2 = Song.create!(album_id: oedipussy.id, title: "Luke", track_num: 2)
oedipussy3 = Song.create!(album_id: oedipussy.id, title: "tablehopzip", track_num: 3)
oedipussy4 = Song.create!(album_id: oedipussy.id, title: "redemption", track_num: 4)

oedipussy1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/oedipussy/1_Summit_WishRelic.mp3")
oedipussy2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/oedipussy/2_Luke.mp3")
oedipussy3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/oedipussy/3_tablehopzip.mp3")
oedipussy4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/oedipussy/4_redemption.mp3")
oedipussy1.audio_file.attach(io: oedipussy1_song, filename: "1_Summit_WishRelic.mp3")
oedipussy2.audio_file.attach(io: oedipussy2_song, filename: "2_Luke.mp3")
oedipussy3.audio_file.attach(io: oedipussy3_song, filename: "3_tablehopzip.mp3")
oedipussy4.audio_file.attach(io: oedipussy4_song, filename: "4_redemption.mp3")
oedipussy1.save!
oedipussy2.save!
oedipussy3.save!
oedipussy4.save!

nighthawksep1 = Song.create!(album_id: nighthawksep.id, title: "Orfeo", track_num: 1)
nighthawksep2 = Song.create!(album_id: nighthawksep.id, title: "Nighthawks", track_num: 2)
nighthawksep3 = Song.create!(album_id: nighthawksep.id, title: "Versailles", track_num: 3)
nighthawksep4 = Song.create!(album_id: nighthawksep.id, title: "Mad About You", track_num: 4)

nighthawksep1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/nighthawks_ep/1_Orfeo.mp3")
nighthawksep2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/nighthawks_ep/2_Nighthawks.mp3")
nighthawksep3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/nighthawks_ep/3_Versailles.mp3")
nighthawksep4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/nighthawks_ep/4_Mad_About_You.mp3")
nighthawksep1.audio_file.attach(io: nighthawksep1_song, filename: "1_Orfeo.mp3")
nighthawksep2.audio_file.attach(io: nighthawksep2_song, filename: "2_Nighthawks.mp3")
nighthawksep3.audio_file.attach(io: nighthawksep3_song, filename: "3_Versailles.mp3")
nighthawksep4.audio_file.attach(io: nighthawksep4_song, filename: "4_Mad_About_You.mp3")
nighthawksep1.save!
nighthawksep2.save!
nighthawksep3.save!
nighthawksep4.save!

thisisntmagic1 = Song.create!(album_id: thisisntmagic.id, title: "If You Won't Choose Me", track_num: 1)
thisisntmagic2 = Song.create!(album_id: thisisntmagic.id, title: "Just Give It Time", track_num: 2)
thisisntmagic3 = Song.create!(album_id: thisisntmagic.id, title: "Try To Be Nice", track_num: 3)
thisisntmagic4 = Song.create!(album_id: thisisntmagic.id, title: "Rondo", track_num: 4)
thisisntmagic5 = Song.create!(album_id: thisisntmagic.id, title: "Hey Mercy", track_num: 5)

thisisntmagic1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/this_isnt_magic/1_If_You_Wont_Choose_Me.mp3")
thisisntmagic2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/this_isnt_magic/2_Just_Give_It_Time.mp3")
thisisntmagic3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/this_isnt_magic/3_Try_To_Be_Nice.mp3")
thisisntmagic4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/this_isnt_magic/4_Rondo.mp3")
thisisntmagic5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/this_isnt_magic/5_Hey_Mercy.mp3")
thisisntmagic1.audio_file.attach(io: thisisntmagic1_song, filename: "1_If_You_Wont_Choose_Me.mp3")
thisisntmagic2.audio_file.attach(io: thisisntmagic2_song, filename: "2_Just_Give_It_Time.mp3")
thisisntmagic3.audio_file.attach(io: thisisntmagic3_song, filename: "3_Try_To_Be_Nice.mp3")
thisisntmagic4.audio_file.attach(io: thisisntmagic4_song, filename: "4_Rondo.mp3")
thisisntmagic5.audio_file.attach(io: thisisntmagic5_song, filename: "5_Hey_Mercy.mp3")
thisisntmagic1.save!
thisisntmagic2.save!
thisisntmagic3.save!
thisisntmagic4.save!
thisisntmagic5.save!

bonvoyage1 = Song.create!(album_id: bonvoyage.id, title: "Caravan", track_num: 1)
bonvoyage2 = Song.create!(album_id: bonvoyage.id, title: "Jettisoned", track_num: 2)
bonvoyage3 = Song.create!(album_id: bonvoyage.id, title: "Pop Brasilia", track_num: 3)
bonvoyage4 = Song.create!(album_id: bonvoyage.id, title: "60s Quiz Show", track_num: 4)
bonvoyage5 = Song.create!(album_id: bonvoyage.id, title: "Trder Ho Hey", track_num: 5)

bonvoyage1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/bon_voyage/1_Caravan.mp3")
bonvoyage2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/bon_voyage/2_Jettisoned.mp3")
bonvoyage3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/bon_voyage/3_Pop_Brasilia.mp3")
bonvoyage4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/bon_voyage/4_60s_Quiz_Show.mp3")
bonvoyage5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/bon_voyage/5_Trader_Ho_Hey.mp3")
bonvoyage1.audio_file.attach(io: bonvoyage1_song, filename: "1_Caravan.mp3")
bonvoyage2.audio_file.attach(io: bonvoyage2_song, filename: "2_Jettisoned.mp3")
bonvoyage3.audio_file.attach(io: bonvoyage3_song, filename: "3_Pop_Brasilia.mp3")
bonvoyage4.audio_file.attach(io: bonvoyage4_song, filename: "4_60s_Quiz_Show.mp3")
bonvoyage5.audio_file.attach(io: bonvoyage5_song, filename: "5_Trader_Ho_Hey.mp3")
bonvoyage1.save!
bonvoyage2.save!
bonvoyage3.save!
bonvoyage4.save!
bonvoyage5.save!

nocturnes1 = Song.create!(album_id: nocturnes.id, title: "Nocturne Op 9 No 1", track_num: 1)
nocturnes2 = Song.create!(album_id: nocturnes.id, title: "Nocturne Op 9 No 2", track_num: 2)
nocturnes3 = Song.create!(album_id: nocturnes.id, title: "Nocturne Op 15 No 1", track_num: 3)
nocturnes4 = Song.create!(album_id: nocturnes.id, title: "Nocturne Op 27 No 1", track_num: 4)
nocturnes5 = Song.create!(album_id: nocturnes.id, title: "Nocturne Op 48 No 1", track_num: 5)

nocturnes1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/nocturnes/1_Nocturne_Op_9_No_1.mp3")
nocturnes2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/nocturnes/2_Nocturne_Op_9_No_2.mp3")
nocturnes3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/nocturnes/3_Nocturne_Op_15_No_1.mp3")
nocturnes4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/nocturnes/4_Nocturne_Op_27_No_1.mp3")
nocturnes5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/nocturnes/5_Nocturne_Op_48_No_1.mp3")
nocturnes1.audio_file.attach(io: nocturnes1_song, filename: "1_Nocturne_Op_9_No_1.mp3")
nocturnes2.audio_file.attach(io: nocturnes2_song, filename: "2_Nocturne_Op_9_No_2.mp3")
nocturnes3.audio_file.attach(io: nocturnes3_song, filename: "3_Nocturne_Op_15_No_1.mp3")
nocturnes4.audio_file.attach(io: nocturnes4_song, filename: "4_Nocturne_Op_27_No_1.mp3")
nocturnes5.audio_file.attach(io: nocturnes5_song, filename: "5_Nocturne_Op_48_No_1.mp3")
nocturnes1.save!
nocturnes2.save!
nocturnes3.save!
nocturnes4.save!
nocturnes5.save!

rainy1 = Song.create!(album_id: rainy.id, title: "Alphabet Soup", track_num: 1)
rainy2 = Song.create!(album_id: rainy.id, title: "Warbled Reflection", track_num: 2)
rainy3 = Song.create!(album_id: rainy.id, title: "Toil", track_num: 3)
rainy4 = Song.create!(album_id: rainy.id, title: "Den", track_num: 4)
rainy5 = Song.create!(album_id: rainy.id, title: "Swing Lo", track_num: 5)

rainy1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/rainy/1_Alphabet_Soup.mp3")
rainy2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/rainy/2_Warbled_Reflection.mp3")
rainy3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/rainy/3_Toil.mp3")
rainy4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/rainy/4_Den.mp3")
rainy5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/rainy/5_Swing_Lo.mp3")
rainy1.audio_file.attach(io: rainy1_song, filename: "1_Alphabet_Soup.mp3")
rainy2.audio_file.attach(io: rainy2_song, filename: "2_Warbled_Reflection.mp3")
rainy3.audio_file.attach(io: rainy3_song, filename: "3_Toil.mp3")
rainy4.audio_file.attach(io: rainy4_song, filename: "4_Den.mp3")
rainy5.audio_file.attach(io: rainy5_song, filename: "5_Swing_Lo.mp3")
rainy1.save!
rainy2.save!
rainy3.save!
rainy4.save!
rainy5.save!

thepoliticsofdesire1 = Song.create!(album_id: thepoliticsofdesire.id, title: "Time Flux", track_num: 1)
thepoliticsofdesire2 = Song.create!(album_id: thepoliticsofdesire.id, title: "Someone Elses Memories", track_num: 2)
thepoliticsofdesire3 = Song.create!(album_id: thepoliticsofdesire.id, title: "The Narrative Changes", track_num: 3)
thepoliticsofdesire4 = Song.create!(album_id: thepoliticsofdesire.id, title: "Scattered Knowledge", track_num: 4)

thepoliticsofdesire1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/politics_of_desire/1_Time_Flux.mp3")
thepoliticsofdesire2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/politics_of_desire/2_Someone_Elses_Memories.mp3")
thepoliticsofdesire3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/politics_of_desire/3_The_Narrative_Changes.mp3")
thepoliticsofdesire4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/politics_of_desire/4_Scattered_Knowledge.mp3")
thepoliticsofdesire1.audio_file.attach(io: thepoliticsofdesire1_song, filename: "1_Time_Flux.mp3")
thepoliticsofdesire2.audio_file.attach(io: thepoliticsofdesire2_song, filename: "2_Someone_Elses_Memories.mp3")
thepoliticsofdesire3.audio_file.attach(io: thepoliticsofdesire3_song, filename: "3_The_Narrative_Changes.mp3")
thepoliticsofdesire4.audio_file.attach(io: thepoliticsofdesire4_song, filename: "4_Scattered_Knowledge.mp3")
thepoliticsofdesire1.save!
thepoliticsofdesire2.save!
thepoliticsofdesire3.save!
thepoliticsofdesire4.save!

lastjoplinblues1 = Song.create!(album_id: lastjoplinblues.id, title: "Our Reasons No Vanguard", track_num: 1)
lastjoplinblues2 = Song.create!(album_id: lastjoplinblues.id, title: "The Calculated Truths", track_num: 2)
lastjoplinblues3 = Song.create!(album_id: lastjoplinblues.id, title: "The Mirage of Social Mess", track_num: 3)
lastjoplinblues4 = Song.create!(album_id: lastjoplinblues.id, title: "Natures Hideous Corset", track_num: 4)
lastjoplinblues5 = Song.create!(album_id: lastjoplinblues.id, title: "Terrible Control", track_num: 5)

lastjoplinblues1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/last_joplin_blues/1_Our_Reasons_No_Vanguard.mp3")
lastjoplinblues2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/last_joplin_blues/2_The_Calculated_Truths.mp3")
lastjoplinblues3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/last_joplin_blues/3_The_Mirage_of_Social_Mess.mp3")
lastjoplinblues4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/last_joplin_blues/4_Natures_Hideous_Corset.mp3")
lastjoplinblues5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/last_joplin_blues/5_Terrible_Control.mp3")
lastjoplinblues1.audio_file.attach(io: lastjoplinblues1_song, filename: "1_Our_Reasons_No_Vanguard.mp3")
lastjoplinblues2.audio_file.attach(io: lastjoplinblues2_song, filename: "2_The_Calculated_Truths.mp3")
lastjoplinblues3.audio_file.attach(io: lastjoplinblues3_song, filename: "3_The_Mirage_of_Social_Mess.mp3")
lastjoplinblues4.audio_file.attach(io: lastjoplinblues4_song, filename: "4_Natures_Hideous_Corset.mp3")
lastjoplinblues5.audio_file.attach(io: lastjoplinblues5_song, filename: "5_Terrible_Control.mp3")
lastjoplinblues1.save!
lastjoplinblues2.save!
lastjoplinblues3.save!
lastjoplinblues4.save!
lastjoplinblues5.save!

familyband1 = Song.new(album_id: familyband.id, title: "We Thee Children", track_num: 1)
familyband2 = Song.new(album_id: familyband.id, title: "You're the One", track_num: 2)
familyband3 = Song.new(album_id: familyband.id, title: "These Terror Twinnes", track_num: 3)
familyband4 = Song.new(album_id: familyband.id, title: "And Decades Now", track_num: 4)
familyband5 = Song.new(album_id: familyband.id, title: "Weaken Me Angel", track_num: 5)

familyband1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/family_band/1_We_Thee_Children.mp3")
familyband2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/family_band/2_Youre_the_One.mp3")
familyband3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/family_band/3_These_Terror_Twinnes.mp3")
familyband4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/family_band/4_And_Decades_Now.mp3")
familyband5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/family_band/5_Weaken_Me_Angel.mp3")
familyband1.audio_file.attach(io: familyband1_song, filename: "1_We_Thee_Children.mp3")
familyband2.audio_file.attach(io: familyband2_song, filename: "2_Youre_the_One.mp3")
familyband3.audio_file.attach(io: familyband3_song, filename: "3_These_Terror_Twinnes.mp3")
familyband4.audio_file.attach(io: familyband4_song, filename: "4_And_Decades_Now.mp3")
familyband5.audio_file.attach(io: familyband5_song, filename: "5_Weaken_Me_Angel.mp3")
familyband1.save!
familyband2.save!
familyband3.save!
familyband4.save!
familyband5.save!

scenesfromthezoo1 = Song.new(album_id: scenesfromthezoo.id, title: "I saw you on TV", track_num: 1)
scenesfromthezoo2 = Song.new(album_id: scenesfromthezoo.id, title: "Mr Bleach", track_num: 2)
scenesfromthezoo3 = Song.new(album_id: scenesfromthezoo.id, title: "Wishlist", track_num: 3)
scenesfromthezoo4 = Song.new(album_id: scenesfromthezoo.id, title: "Glass half empty", track_num: 4)
scenesfromthezoo5 = Song.new(album_id: scenesfromthezoo.id, title: "Everything we talked about", track_num: 5)

scenesfromthezoo1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/scenes_from_the_zoo/1_I_saw_you_on_TV.mp3")
scenesfromthezoo2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/scenes_from_the_zoo/2_Mr_Bleach.mp3")
scenesfromthezoo3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/scenes_from_the_zoo/3_Wishlist.mp3")
scenesfromthezoo4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/scenes_from_the_zoo/4_Glass_half_empty.mp3")
scenesfromthezoo5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/jahzzar/scenes_from_the_zoo/5_Everything_we_talked_about.mp3")
scenesfromthezoo1.audio_file.attach(io: scenesfromthezoo1_song, filename: "1_I_saw_you_on_TV.mp3")
scenesfromthezoo2.audio_file.attach(io: scenesfromthezoo2_song, filename: "2_Mr_Bleach.mp3")
scenesfromthezoo3.audio_file.attach(io: scenesfromthezoo3_song, filename: "3_Wishlist.mp3")
scenesfromthezoo4.audio_file.attach(io: scenesfromthezoo4_song, filename: "4_Glass_half_empty.mp3")
scenesfromthezoo5.audio_file.attach(io: scenesfromthezoo5_song, filename: "5_Everything_we_talked_about.mp3")
scenesfromthezoo1.save!
scenesfromthezoo2.save!
scenesfromthezoo3.save!
scenesfromthezoo4.save!
scenesfromthezoo5.save!

n31 = Song.new(album_id: n3.id, title: "XY", track_num: 1)
n32 = Song.new(album_id: n3.id, title: "Trivium", track_num: 2)
n33 = Song.new(album_id: n3.id, title: "Brown", track_num: 3)
n34 = Song.new(album_id: n3.id, title: "Hz", track_num: 4)
n35 = Song.new(album_id: n3.id, title: "Muenster", track_num: 5)

n31_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/n3/1_XY.mp3")
n32_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/n3/2_Trivium.mp3")
n33_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/n3/3_Brown.mp3")
n34_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/n3/4_Hz.mp3")
n35_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/nctrnm/n3/5_Muenster.mp3")
n31.audio_file.attach(io: n31_song, filename: "1_XY.mp3")
n32.audio_file.attach(io: n32_song, filename: "2_Trivium.mp3")
n33.audio_file.attach(io: n33_song, filename: "3_Brown.mp3")
n34.audio_file.attach(io: n34_song, filename: "4_Hz.mp3")
n35.audio_file.attach(io: n35_song, filename: "5_Muenster.mp3")
n31.save!
n32.save!
n33.save!
n34.save!
n35.save!

tojapan1 = Song.new(album_id: tojapan.id, title: "Introduction", track_num: 1)
tojapan2 = Song.new(album_id: tojapan.id, title: "So Little of the World", track_num: 2)
tojapan3 = Song.new(album_id: tojapan.id, title: "Tokyo to Kyoto", track_num: 3)
tojapan4 = Song.new(album_id: tojapan.id, title: "Nightingales", track_num: 4)
tojapan5 = Song.new(album_id: tojapan.id, title: "Kyoto to Osaka", track_num: 5)
tojapan6 = Song.new(album_id: tojapan.id, title: "Shinsaibashi", track_num: 6)
tojapan7 = Song.new(album_id: tojapan.id, title: "Hiroshima", track_num: 7)
tojapan8 = Song.new(album_id: tojapan.id, title: "Return to Tokyo", track_num: 8)
tojapan9 = Song.new(album_id: tojapan.id, title: "Pacific Echoes", track_num: 9)
tojapan10 = Song.new(album_id: tojapan.id, title: "Epilogue", track_num: 10)

tojapan1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/to_japan/1_introduction.mp3")
tojapan2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/to_japan/2_so_little_of_the_world.mp3")
tojapan3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/to_japan/3_tokyo_to_kyoto.mp3")
tojapan4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/to_japan/4_nightingales.mp3")
tojapan5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/to_japan/5_kyoto_to_osaka.mp3")
tojapan6_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/to_japan/6_Shinsaibashi.mp3")
tojapan7_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/to_japan/7_Hiroshima.mp3")
tojapan8_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/to_japan/8_Return_To_Tokyo.mp3")
tojapan9_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/to_japan/9_Pacific_Echoes.mp3")
tojapan10_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/pierce_murphy/to_japan/10_Epilogue.mp3")
tojapan1.audio_file.attach(io: tojapan1_song, filename: "1_introduction.mp3")
tojapan2.audio_file.attach(io: tojapan2_song, filename: "2_so_little_of_the_world.mp3")
tojapan3.audio_file.attach(io: tojapan3_song, filename: "3_tokyo_to_kyoto.mp3")
tojapan4.audio_file.attach(io: tojapan4_song, filename: "4_nightingales.mp3")
tojapan5.audio_file.attach(io: tojapan5_song, filename: "5_kyoto_to_osaka.mp3")
tojapan6.audio_file.attach(io: tojapan6_song, filename: "6_Shinsaibashi.mp3")
tojapan7.audio_file.attach(io: tojapan7_song, filename: "7_Hiroshima.mp3")
tojapan8.audio_file.attach(io: tojapan8_song, filename: "8_Return_To_Tokyo.mp3")
tojapan9.audio_file.attach(io: tojapan9_song, filename: "9_Pacific_Echoes.mp3")
tojapan10.audio_file.attach(io: tojapan10_song, filename: "10_Epilogue.mp3")
tojapan1.save!
tojapan2.save!
tojapan3.save!
tojapan4.save!
tojapan5.save!
tojapan6.save!
tojapan7.save!
tojapan8.save!
tojapan9.save!
tojapan10.save!

lifespan1 = Song.new(album_id: lifespan.id, title: "Fakers", track_num: 1)
lifespan2 = Song.new(album_id: lifespan.id, title: "Grove", track_num: 2)
lifespan3 = Song.new(album_id: lifespan.id, title: "Lotte", track_num: 3)
lifespan4 = Song.new(album_id: lifespan.id, title: "Mall", track_num: 4)
lifespan5 = Song.new(album_id: lifespan.id, title: "Shrm Oks", track_num: 5)

lifespan1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/life_span/1_Fakers.mp3")
lifespan2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/life_span/2_Grove.mp3")
lifespan3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/life_span/3_Lotte.mp3")
lifespan4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/life_span/4_Mall.mp3")
lifespan5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/oedipussy/life_span/5_Shrm_Oks.mp3")
lifespan1.audio_file.attach(io: lifespan1_song, filename: "1_Fakers.mp3")
lifespan2.audio_file.attach(io: lifespan2_song, filename: "2_Grove.mp3")
lifespan3.audio_file.attach(io: lifespan3_song, filename: "3_Lotte.mp3")
lifespan4.audio_file.attach(io: lifespan4_song, filename: "4_Mall.mp3")
lifespan5.audio_file.attach(io: lifespan5_song, filename: "5_Shrm_Oks.mp3")
lifespan1.save!
lifespan2.save!
lifespan3.save!
lifespan4.save!
lifespan5.save!

threadsoul1 = Song.new(album_id: threadsoul.id, title: "Biomythos", track_num: 1)
threadsoul2 = Song.new(album_id: threadsoul.id, title: "As We May Think", track_num: 2)
threadsoul3 = Song.new(album_id: threadsoul.id, title: "City Lights at Night", track_num: 3)
threadsoul4 = Song.new(album_id: threadsoul.id, title: "Infornography", track_num: 4)
threadsoul5 = Song.new(album_id: threadsoul.id, title: "The Robot is Dreaming", track_num: 5)

threadsoul1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/thread_soul/1_Biomythos.mp3")
threadsoul2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/thread_soul/2_As_We_May_Think.mp3")
threadsoul3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/thread_soul/3_City_Lights_at_Night.mp3")
threadsoul4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/thread_soul/4_Infornography.mp3")
threadsoul5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/revolution_void/thread_soul/5_The_Robot_is_Dreaming.mp3")
threadsoul1.audio_file.attach(io: threadsoul1_song, filename: "1_Biomythos.mp3")
threadsoul2.audio_file.attach(io: threadsoul2_song, filename: "2_As_We_May_Think.mp3")
threadsoul3.audio_file.attach(io: threadsoul3_song, filename: "3_City_Lights_at_Night.mp3")
threadsoul4.audio_file.attach(io: threadsoul4_song, filename: "4_Infornography.mp3")
threadsoul5.audio_file.attach(io: threadsoul5_song, filename: "5_The_Robot_is_Dreaming.mp3")
threadsoul1.save!
threadsoul2.save!
threadsoul3.save!
threadsoul4.save!
threadsoul5.save!

passages1 = Song.new(album_id: passages.id, title: "Kaleidoscope", track_num: 1)
passages2 = Song.new(album_id: passages.id, title: "So It Goes", track_num: 2)
passages3 = Song.new(album_id: passages.id, title: "Boardwalk", track_num: 3)
passages4 = Song.new(album_id: passages.id, title: "Aim is True", track_num: 4)
passages5 = Song.new(album_id: passages.id, title: "The Gall", track_num: 5)

passages1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/passages/1_Kaleidoscope.mp3")
passages2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/passages/2_So_It_Goes.mp3")
passages3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/passages/3_Boardwalk.mp3")
passages4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/passages/4_Aim_Is_True.mp3")
passages5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/podington_bear/passages/5_The_Gall.mp3")
passages1.audio_file.attach(io: passages1_song, filename: "1_Kaleidoscope.mp3")
passages2.audio_file.attach(io: passages2_song, filename: "2_So_It_Goes.mp3")
passages3.audio_file.attach(io: passages3_song, filename: "3_Boardwalk.mp3")
passages4.audio_file.attach(io: passages4_song, filename: "4_Aim_Is_True.mp3")
passages5.audio_file.attach(io: passages5_song, filename: "5_The_Gall.mp3")
passages1.save!
passages2.save!
passages3.save!
passages4.save!
passages5.save!

oldermoodscolderbloods1 = Song.new(album_id: oldermoodscolderbloods.id, title: "This Country Ride", track_num: 1)
oldermoodscolderbloods2 = Song.new(album_id: oldermoodscolderbloods.id, title: "Interlude", track_num: 2)
oldermoodscolderbloods3 = Song.new(album_id: oldermoodscolderbloods.id, title: "Others I am not", track_num: 3)
oldermoodscolderbloods4 = Song.new(album_id: oldermoodscolderbloods.id, title: "Once a LifeTime We Will Die", track_num: 4)
oldermoodscolderbloods5 = Song.new(album_id: oldermoodscolderbloods.id, title: "With Hue of Violet", track_num: 5)

oldermoodscolderbloods1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/older_moods/1_This_Country_Ride.mp3")
oldermoodscolderbloods2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/older_moods/2_Interlude.mp3")
oldermoodscolderbloods3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/older_moods/3_Others_I_am_not.mp3")
oldermoodscolderbloods4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/older_moods/4_Once_a_LifeTime_We_Will_Die.mp3")
oldermoodscolderbloods5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/the_agrarians/older_moods/5_With_Hue_of_Violet.mp3")
oldermoodscolderbloods1.audio_file.attach(io: oldermoodscolderbloods1_song, filename: "1_This_Country_Ride.mp3")
oldermoodscolderbloods2.audio_file.attach(io: oldermoodscolderbloods2_song, filename: "2_Interlude.mp3")
oldermoodscolderbloods3.audio_file.attach(io: oldermoodscolderbloods3_song, filename: "3_Others_I_am_not.mp3")
oldermoodscolderbloods4.audio_file.attach(io: oldermoodscolderbloods4_song, filename: "4_Once_a_LifeTime_We_Will_Die.mp3")
oldermoodscolderbloods5.audio_file.attach(io: oldermoodscolderbloods5_song, filename: "5_With_Hue_of_Violet.mp3")
oldermoodscolderbloods1.save!
oldermoodscolderbloods2.save!
oldermoodscolderbloods3.save!
oldermoodscolderbloods4.save!
oldermoodscolderbloods5.save!

hotpotdancing1 = Song.new(album_id: hotpotdancing.id, title: "Power Sofa", track_num: 1)
hotpotdancing2 = Song.new(album_id: hotpotdancing.id, title: "Carnevale", track_num: 2)
hotpotdancing3 = Song.new(album_id: hotpotdancing.id, title: "Atlas Dance Expedition", track_num: 3)
hotpotdancing4 = Song.new(album_id: hotpotdancing.id, title: "Vegetables Parade", track_num: 4)
hotpotdancing5 = Song.new(album_id: hotpotdancing.id, title: "Robo Formation Dance", track_num: 5)

hotpotdancing1_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/hot_pot_dancing/1_Power_Sofa.mp3")
hotpotdancing2_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/hot_pot_dancing/2_Carnevale.mp3")
hotpotdancing3_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/hot_pot_dancing/3_Atlas_Dance_Expedition.mp3")
hotpotdancing4_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/hot_pot_dancing/4_Vegetables_Parade.mp3")
hotpotdancing5_song = EzDownload.open("https://s3.amazonaws.com/tunesmith-prod/lobo_loco/hot_pot_dancing/5_Robo_Formation_Dance.mp3")
hotpotdancing1.audio_file.attach(io: hotpotdancing1_song, filename: "1_Power_Sofa.mp3")
hotpotdancing2.audio_file.attach(io: hotpotdancing2_song, filename: "2_Carnevale.mp3")
hotpotdancing3.audio_file.attach(io: hotpotdancing3_song, filename: "3_Atlas_Dance_Expedition.mp3")
hotpotdancing4.audio_file.attach(io: hotpotdancing4_song, filename: "4_Vegetables_Parade.mp3")
hotpotdancing5.audio_file.attach(io: hotpotdancing5_song, filename: "5_Robo_Formation_Dance.mp3")
hotpotdancing1.save!
hotpotdancing2.save!
hotpotdancing3.save!
hotpotdancing4.save!
hotpotdancing5.save!
