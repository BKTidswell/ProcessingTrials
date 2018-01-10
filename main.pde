

void setup() {
  size( 1050, 550 );
  background(#2251BD)
  colorMode(HSB, 100);
  loop();
}

void draw() {
  float r = random(100);

  float x = random(0, width);

  float i = random(0, width);
  
  stroke(17,r,100, 100);
    

  line(i, 0, x, height);

}
