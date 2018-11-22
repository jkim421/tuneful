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

jahzzar = User.create!(username: "Jahzzar", password: "password", email: "jahzzar@gmail.com")
loboloco = User.create!(username: "LoboLoco", password: "password", email: "loboloco@gmail.com")
nctrnm = User.create!(username: "Nctrnm", password: "password", email: "nctrnm@gmail.com")
oedipussy = User.create!(username: "Oedipussy", password: "password", email: "oedipussy@gmail.com")
piercemurphy = User.create!(username: "PierceMurphy", password: "password", email: "piercemurphy@gmail.com")
podingtonbear = User.create!(username: "PodingtonBear", password: "password", email: "podingtonbear@gmail.com")
revolutionvoid = User.create!(username: "RevolutionVoid", password: "password", email: "revolutionvoid@gmail.com")
theagrarians = User.create!(username: "TheAgrarians", password: "password", email: "theagrarians@gmail.com")
demo = User.create!(username: "Demo", password: "password", email: "demo@gmail.com")

jahzzar_art = Artist.new(user_id: jahzzar.id, name: "Jahzzar", location: "Gijón, Asturias", bio: "Jahzzar’s music offers sounds for ideas, to enjoy and share, to use. No matter the language, just communicate.")
loboloco_art = Artist.new(user_id: loboloco.id, name: "Lobo Loco", location: "Göppingen, Germany", bio: "")
nctrnm_art = Artist.new(user_id: nctrnm.id, name: "Nctrnm", location: "Colton, CA", bio: "i'm nctrnm: singer, songwriter, experimental/electronic producer.")
oedipussy_art = Artist.new(user_id: oedipussy.id, name: "Oedipussy", location: "San Francisco, CA", bio: "")
piercemurphy_art = Artist.new(user_id: piercemurphy.id, name: "Pierce Murphy", location: "Denver, CO", bio: "Wherever you see me, I'm looking forward to sharing some music with you.")
podingtonbear_art = Artist.new(user_id: podingtonbear.id, name: "Podington Bear", location: "Portland, OR", bio: "A mysterious bear named Podington took the Internet by storm in 2007, releasing three beautifully crafted songs a week. ")
revolutionvoid_art = Artist.new(user_id: revolutionvoid.id, name: "Revolution Void", location: "Seattle, WA", bio: "Revolution Void is the moniker of 23-year-old producer and jazz pianist Jonah Dempcy. ")
theagrarians_art = Artist.new(user_id: theagrarians.id, name: "The Agrarians", location: "Baltimore, MD", bio: "")

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
kuddelmuddel1 = Song.create!(album_id: kuddelmuddel.id, title: "2014", track_num: 1)
kuddelmuddel2 = Song.create!(album_id: kuddelmuddel.id, title: "Forgiven Not Forgotten", track_num: 2)
kuddelmuddel3 = Song.create!(album_id: kuddelmuddel.id, title: "Invisible", track_num: 3)
kuddelmuddel4 = Song.create!(album_id: kuddelmuddel.id, title: "LH", track_num: 4)
kuddelmuddel5 = Song.create!(album_id: kuddelmuddel.id, title: "Missing You", track_num: 5)
scenesfromthezoo1 = Song.create!(album_id: scenesfromthezoo.id, title: "I saw you on TV", track_num: 1)
scenesfromthezoo2 = Song.create!(album_id: scenesfromthezoo.id, title: "Mr Bleach", track_num: 2)
scenesfromthezoo3 = Song.create!(album_id: scenesfromthezoo.id, title: "Wishlist", track_num: 3)
scenesfromthezoo4 = Song.create!(album_id: scenesfromthezoo.id, title: "Glass half empty", track_num: 4)
scenesfromthezoo5 = Song.create!(album_id: scenesfromthezoo.id, title: "Everything we talked about", track_num: 5)
supers1 = Song.create!(album_id: supers.id, title: "Shake It", track_num: 1)
supers2 = Song.create!(album_id: supers.id, title: "Chiefs", track_num: 2)
supers3 = Song.create!(album_id: supers.id, title: "No Control", track_num: 3)
supers4 = Song.create!(album_id: supers.id, title: "Word Up", track_num: 4)
supers5 = Song.create!(album_id: supers.id, title: "Comedie", track_num: 5)
hotpotdancing1 = Song.create!(album_id: hotpotdancing.id, title: "Power Sofa", track_num: 1)
hotpotdancing2 = Song.create!(album_id: hotpotdancing.id, title: "Carnevale", track_num: 2)
hotpotdancing3 = Song.create!(album_id: hotpotdancing.id, title: "Atlas Dance Expedition", track_num: 3)
hotpotdancing4 = Song.create!(album_id: hotpotdancing.id, title: "Vegetables Parade", track_num: 4)
hotpotdancing5 = Song.create!(album_id: hotpotdancing.id, title: "Robo Formation Dance", track_num: 5)
littlecaesar1 = Song.create!(album_id: littlecaesar.id, title: "Little Caesar Bandello", track_num: 1)
littlecaesar2 = Song.create!(album_id: littlecaesar.id, title: "Madame Ragadance", track_num: 2)
littlecaesar3 = Song.create!(album_id: littlecaesar.id, title: "Cave Jogging", track_num: 3)
littlecaesar4 = Song.create!(album_id: littlecaesar.id, title: "Grandpas Racing Duel", track_num: 4)
littlecaesar5 = Song.create!(album_id: littlecaesar.id, title: "Lotterie Numbers", track_num: 5)
retro1 = Song.create!(album_id: retro.id, title: "After war", track_num: 1)
retro2 = Song.create!(album_id: retro.id, title: "Malte Junior", track_num: 2)
retro3 = Song.create!(album_id: retro.id, title: "History Jingle", track_num: 3)
retro4 = Song.create!(album_id: retro.id, title: "Malte Senior", track_num: 4)
retro5 = Song.create!(album_id: retro.id, title: "Sunday Picnic", track_num: 5)
vagabond1 = Song.create!(album_id: vagabond.id, title: "Just a Moment", track_num: 1)
vagabond2 = Song.create!(album_id: vagabond.id, title: "Hey Go", track_num: 2)
vagabond3 = Song.create!(album_id: vagabond.id, title: "Psychedelic Blues", track_num: 3)
vagabond4 = Song.create!(album_id: vagabond.id, title: "Double Decker", track_num: 4)
vagabond5 = Song.create!(album_id: vagabond.id, title: "The First Moment", track_num: 5)
acuerdo1 = Song.create!(album_id: acuerdo.id, title: "Friction", track_num: 1)
acuerdo2 = Song.create!(album_id: acuerdo.id, title: "Bubble", track_num: 2)
acuerdo3 = Song.create!(album_id: acuerdo.id, title: "Rider", track_num: 3)
equinox1 = Song.create!(album_id: equinox.id, title: "Recess", track_num: 1)
equinox2 = Song.create!(album_id: equinox.id, title: "Stride", track_num: 2)
equinox3 = Song.create!(album_id: equinox.id, title: "Flight", track_num: 3)
equinox4 = Song.create!(album_id: equinox.id, title: "Unit", track_num: 4)
equinox5 = Song.create!(album_id: equinox.id, title: "Phantom", track_num: 5)
founded1 = Song.create!(album_id: founded.id, title: "Concern", track_num: 1)
founded2 = Song.create!(album_id: founded.id, title: "Dealer", track_num: 2)
founded3 = Song.create!(album_id: founded.id, title: "Found", track_num: 3)
founded4 = Song.create!(album_id: founded.id, title: "La Femme", track_num: 4)
founded5 = Song.create!(album_id: founded.id, title: "Truee", track_num: 5)
n31 = Song.create!(album_id: n3.id, title: "XY", track_num: 1)
n32 = Song.create!(album_id: n3.id, title: "Trivium", track_num: 2)
n33 = Song.create!(album_id: n3.id, title: "Brown", track_num: 3)
n34 = Song.create!(album_id: n3.id, title: "Hz", track_num: 4)
n35 = Song.create!(album_id: n3.id, title: "Muenster", track_num: 5)
death1 = Song.create!(album_id: death.id, title: "THey All Float", track_num: 1)
death2 = Song.create!(album_id: death.id, title: "13", track_num: 2)
death3 = Song.create!(album_id: death.id, title: "Hymen", track_num: 3)
death4 = Song.create!(album_id: death.id, title: "Medusa", track_num: 4)
death5 = Song.create!(album_id: death.id, title: "Slow Death", track_num: 5)
lifespan1 = Song.create!(album_id: lifespan.id, title: "Fakers", track_num: 1)
lifespan2 = Song.create!(album_id: lifespan.id, title: "Grove", track_num: 2)
lifespan3 = Song.create!(album_id: lifespan.id, title: "Lotte", track_num: 3)
lifespan4 = Song.create!(album_id: lifespan.id, title: "Mall", track_num: 4)
lifespan5 = Song.create!(album_id: lifespan.id, title: "Shrm Oks", track_num: 5)
oedipussy1 = Song.create!(album_id: oedipussy.id, title: "Summit WishRelic", track_num: 1)
oedipussy2 = Song.create!(album_id: oedipussy.id, title: "Luke", track_num: 2)
oedipussy3 = Song.create!(album_id: oedipussy.id, title: "tablehopzip", track_num: 3)
oedipussy4 = Song.create!(album_id: oedipussy.id, title: "redemption", track_num: 4)
nighthawksep1 = Song.create!(album_id: nighthawksep.id, title: "Orfeo", track_num: 1)
nighthawksep2 = Song.create!(album_id: nighthawksep.id, title: "Nighthawks", track_num: 2)
nighthawksep3 = Song.create!(album_id: nighthawksep.id, title: "Versailles", track_num: 3)
nighthawksep4 = Song.create!(album_id: nighthawksep.id, title: "Mad About You", track_num: 4)
thisisntmagic1 = Song.create!(album_id: thisisntmagic.id, title: "If You Won't Choose Me", track_num: 1)
thisisntmagic2 = Song.create!(album_id: thisisntmagic.id, title: "Just Give It Time", track_num: 2)
thisisntmagic3 = Song.create!(album_id: thisisntmagic.id, title: "Try To Be Nice", track_num: 3)
thisisntmagic4 = Song.create!(album_id: thisisntmagic.id, title: "Rondo", track_num: 4)
thisisntmagic5 = Song.create!(album_id: thisisntmagic.id, title: "Hey Mercy", track_num: 5)
tojapan1 = Song.create!(album_id: tojapan.id, title: "Introduction", track_num: 1)
tojapan2 = Song.create!(album_id: tojapan.id, title: "So Little of the World", track_num: 2)
tojapan3 = Song.create!(album_id: tojapan.id, title: "Tokyo to Kyoto", track_num: 3)
tojapan4 = Song.create!(album_id: tojapan.id, title: "Nightingales", track_num: 4)
tojapan5 = Song.create!(album_id: tojapan.id, title: "Kyoto to Osaka", track_num: 5)
tojapan6 = Song.create!(album_id: tojapan.id, title: "Shinsaibashi", track_num: 6)
tojapan7 = Song.create!(album_id: tojapan.id, title: "Hiroshima", track_num: 7)
tojapan8 = Song.create!(album_id: tojapan.id, title: "Return to Tokyo", track_num: 8)
tojapan9 = Song.create!(album_id: tojapan.id, title: "Pacific Echoes", track_num: 9)
tojapan10 = Song.create!(album_id: tojapan.id, title: "Epilogue", track_num: 10)
bonvoyage1 = Song.create!(album_id: bonvoyage.id, title: "Caravan", track_num: 1)
bonvoyage2 = Song.create!(album_id: bonvoyage.id, title: "Jettisoned", track_num: 2)
bonvoyage3 = Song.create!(album_id: bonvoyage.id, title: "Pop Brasilia", track_num: 3)
bonvoyage4 = Song.create!(album_id: bonvoyage.id, title: "60s Quiz Show", track_num: 4)
bonvoyage5 = Song.create!(album_id: bonvoyage.id, title: "Trder Ho Hey", track_num: 5)
nocturnes1 = Song.create!(album_id: nocturnes.id, title: "Nocturne Op 9 No 1", track_num: 1)
nocturnes2 = Song.create!(album_id: nocturnes.id, title: "Nocturne Op 9 No 2", track_num: 2)
nocturnes3 = Song.create!(album_id: nocturnes.id, title: "Nocturne Op 15 No 1", track_num: 3)
nocturnes4 = Song.create!(album_id: nocturnes.id, title: "Nocturne Op 27 No 1", track_num: 4)
nocturnes5 = Song.create!(album_id: nocturnes.id, title: "Nocturne Op 48 No 1", track_num: 5)
passages1 = Song.create!(album_id: passages.id, title: "Kaleidoscope", track_num: 1)
passages2 = Song.create!(album_id: passages.id, title: "So It Goes", track_num: 2)
passages3 = Song.create!(album_id: passages.id, title: "Boardwalk", track_num: 3)
passages4 = Song.create!(album_id: passages.id, title: "Aim is True", track_num: 4)
passages5 = Song.create!(album_id: passages.id, title: "The Gall", track_num: 5)
rainy1 = Song.create!(album_id: rainy.id, title: "Alphabet Soup", track_num: 1)
rainy2 = Song.create!(album_id: rainy.id, title: "Warbled Reflection", track_num: 2)
rainy3 = Song.create!(album_id: rainy.id, title: "Toil", track_num: 3)
rainy4 = Song.create!(album_id: rainy.id, title: "Den", track_num: 4)
rainy5 = Song.create!(album_id: rainy.id, title: "Swing Lo", track_num: 5)
thepoliticsofdesire1 = Song.create!(album_id: thepoliticsofdesire.id, title: "Time Flux", track_num: 1)
thepoliticsofdesire2 = Song.create!(album_id: thepoliticsofdesire.id, title: "Someone Elses Memories", track_num: 2)
thepoliticsofdesire3 = Song.create!(album_id: thepoliticsofdesire.id, title: "The Narrative Changes", track_num: 3)
thepoliticsofdesire4 = Song.create!(album_id: thepoliticsofdesire.id, title: "Scattered Knowledge", track_num: 4)
threadsoul1 = Song.create!(album_id: threadsoul.id, title: "Biomythos", track_num: 1)
threadsoul2 = Song.create!(album_id: threadsoul.id, title: "As We May Think", track_num: 2)
threadsoul3 = Song.create!(album_id: threadsoul.id, title: "City Lights at Night", track_num: 3)
threadsoul4 = Song.create!(album_id: threadsoul.id, title: "Infornography", track_num: 4)
threadsoul5 = Song.create!(album_id: threadsoul.id, title: "The Robot is Dreaming", track_num: 5)
familyband1 = Song.create!(album_id: familyband.id, title: "We Thee Children", track_num: 1)
familyband2 = Song.create!(album_id: familyband.id, title: "You're the One", track_num: 2)
familyband3 = Song.create!(album_id: familyband.id, title: "These Terror Twinnes", track_num: 3)
familyband4 = Song.create!(album_id: familyband.id, title: "And Decades Now", track_num: 4)
familyband5 = Song.create!(album_id: familyband.id, title: "Weaken Me Angel", track_num: 5)
lastjoplinblues1 = Song.create!(album_id: lastjoplinblues.id, title: "Our Reasons No Vanguard", track_num: 1)
lastjoplinblues2 = Song.create!(album_id: lastjoplinblues.id, title: "The Calculated Truths", track_num: 2)
lastjoplinblues3 = Song.create!(album_id: lastjoplinblues.id, title: "The Mirage of Social Mess", track_num: 3)
lastjoplinblues4 = Song.create!(album_id: lastjoplinblues.id, title: "Natures Hideous Corset", track_num: 4)
lastjoplinblues5 = Song.create!(album_id: lastjoplinblues.id, title: "Terrible Control", track_num: 5)
oldermoodscolderbloods1 = Song.create!(album_id: oldermoodscolderbloods.id, title: "This Country Ride", track_num: 1)
oldermoodscolderbloods2 = Song.create!(album_id: oldermoodscolderbloods.id, title: "Interlude", track_num: 2)
oldermoodscolderbloods3 = Song.create!(album_id: oldermoodscolderbloods.id, title: "Others I am not", track_num: 3)
oldermoodscolderbloods4 = Song.create!(album_id: oldermoodscolderbloods.id, title: "Once a LifeTime We Will Die", track_num: 4)
oldermoodscolderbloods5 = Song.create!(album_id: oldermoodscolderbloods.id, title: "With Hue of Violet", track_num: 5)
