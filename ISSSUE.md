# moflix Issue Tracker

## Issue: Redirection to Player Page Not Working Properly

**Issue Description:**
When clicking on the movie image, the expected behavior is for the single-movie.view.php page to load, followed by clicking on "Watch Now" to redirect to the player page where the iframe code from the database is supposed to load. However, in the case of movies, the redirection is working, but the player page is not receiving the iframe code from the database.

**Expected Behavior:**
- Clicking on the movie image should load the single-movie.view.php page.
- Clicking on "Watch Now" should redirect to the player page.
- The player page should receive the iframe code from the database and display the appropriate content.

**Actual Behavior:**
- Clicking on the movie image correctly loads the single-movie.view.php page.
- Clicking on "Watch Now" successfully redirects to the player page.
- However, the player.view.php file does not seem to be working as expected, and the iframe code is not being displayed for movies.

![Screenshot - Single Movie View](movie.png)
![Screenshot - Player View](playmovie.png)

## Issue: Player Not Performing for Songs

**Issue Description:**
In the case of songs, when clicking on "Listen Now," the expected behavior is to redirect to the player page (player.view.php) and load the appropriate content. However, the player.view.php file is not functioning correctly for songs.

**Expected Behavior:**
- Clicking on "Listen Now" should redirect to the player page for songs.
- The player page should load the relevant content for the selected song.

**Actual Behavior:**
- Clicking on "Listen Now" correctly redirects to the player page.
- However, the player.view.php file does not seem to be working as expected for songs.

![Screenshot - Player View for Songs](path/to/song_player_screenshot.png)

### Video Demonstration

Please find attached a video demonstrating the issues mentioned above:

[Download Issue Video](MoFlix_and_3_more_pages-Personal-Microsoft_Edge_2023-04-15_22-52-24.mp4)
