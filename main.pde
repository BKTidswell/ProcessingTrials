

void setup() {
  size( 1050, 550 );
  background(#FFFFFF)
  colorMode(HSB, 360);
  loop();
}

void draw() {

  float r = random(360);

  float x = random(0, width);

  float i = random(0, width);
  
  stroke(r,180,360, 100);
    

  line(i, 0, x, height);

}
