PImage img;

void setup() {
  size(50, 50, P2D);
  setupMovie("cat.mp4");
  img = createImage(100, 100, RGB);
  background(0);
}



void draw() {
  drawMovie();
  img = movie.get(100, 100, 100, 100);
  image(img, width/2, height/2);
}