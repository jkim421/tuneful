# README

**~tuneful** is a web platform where artists can freely stream and distribute their music to fans and fans-to-be. Inspired by and modeled on [bandcamp](https://bandcamp.com).

[Link to live app](https://tuneful.herokuapp.com/)

## Key Features
### Music Player

tuneful's music player is custom made with audio functionality enabled by the HTML audio tag. Users can play, pause and advance songs using set buttons on the player, and can also skip to different times on the current song by clicking on the progress bar. Users can also play and pause songs from the song list for the album below the music player. Since all music distributed on tuneful is free to use, user's can also download any songs they enjoy directly from its album page.

![music_player](https://i.imgur.com/psqbayI.png)

### Collections

If users are enjoying the music that's playing, they can save albums to their collection and follow artists they enjoy, with all of their favorited albums and artists available to view on their user profile for easy access. If the user is an artist that has hosted their music on tuneful, they can also view all the albums they have added.

![collections](https://i.imgur.com/eaavDUb.png)

### Search Bar

From any page on tuneful, users can use a search bar in the app header to search for albums and artists. The search bar will dynamically return any albums and artists who's titles and names match the current query. The search component utilizes a debouncing step so that the search query is only submitted to the database after the user has not updated the query for a set amount of time.

![search_bar](https://i.imgur.com/8HU43oR.png)
