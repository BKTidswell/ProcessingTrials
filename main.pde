
void setup() {
  size(screen.width, screen.height);
  background(#FFFFFF)
  colorMode(HSB, 360);
  loop();
}

void draw() {

  int r = random(360);

  int x = random(0, width);

  int i = random(0, width);
  
  stroke(r,180,360, 100);
    

  line(i, 0, x, height);

}
