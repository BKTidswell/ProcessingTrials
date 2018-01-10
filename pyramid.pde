// Global variables
int X, Y;
int left,middle,right;
int delay = 8;
int alpha = 100;
background_color = #3E9EB4;
tri1_color = #CE2387;
tri2_color = #FFD32B;

// Setup the Processing Canvas
void setup(){
  size( 1050, 550 );
  strokeWeight( 1 );
  frameRate( 15 );
  left = 0
  middle = width/2
  right = width
  X = width / 2;
  Y = height / 2;
  background(background_color);
}

// Main draw loop
void draw(){  
  // Track circle to new destination
  X+=(mouseX-X)/delay;
  Y+=(mouseY-Y)/delay;
  
  // Fill canvas blue
  //background(background_color);
  
  //pink triangel
  fill(tri1_color,alpha);
  stroke(tri1_color,alpha); 
  triangle(left, height, middle, height, X, Y);
  fill(tri2_color,alpha);
  stroke(tri2_color,alpha); 
  triangle(right, height, middle, height, X, Y); 
}
