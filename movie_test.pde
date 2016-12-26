PImage img;

void setup() {
  size(50, 50, P2D);
  setupMoviePlayer("cat.mp4");
  moviePlayer[0].resizeStage = true;
  img = createImage(100, 100, RGB);
  background(0);
}



void draw() {
  drawMoviePlayer();
  img = moviePlayer[0].frame.get(180, 50, 100, 100);
  image(img, width/2, height/2);
}