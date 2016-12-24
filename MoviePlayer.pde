import processing.video.*;
  
Movie movie;
PImage frame;
boolean firstRun = true;
boolean ready = false;
boolean resizeStage = true;

void setupMovie(String fileName) {
  movie = new Movie(this, fileName);
  movie.loop();
  movie.volume(0);
  frame = createImage(movie.width, movie.height, RGB);
}

void drawMovie() {
  if (ready) {
    if (resizeStage) surface.setSize(movie.width, movie.height);
    ready = false;
  }
  if (movie.available()) {
    image(frame, 0, 0);
  }  
}

void movieEvent(Movie m) {
  if (m == movie) { // modify for multiple movies
    movie.read();
    if (movie.available()) {
      if (firstRun) {
        ready = true;
        firstRun = false;
      }
      frame = movie.get(0, 0, m.width, m.height); 
    } 
  }
}