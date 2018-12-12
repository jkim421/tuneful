death1 = Song.create!(album_id: death.id, title: "They All Float", track_num: 1)
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
