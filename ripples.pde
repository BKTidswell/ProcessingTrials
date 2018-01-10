// Global variables

ArrayList startX;
ArrayList startY;
ArrayList startTime;
ArrayList time;
int counter = 1;
int increase = 1;
int time = 1;
int alpha = 0;

background_color = #0971DD;

// Setup the Processing Canvas
void setup(){
  size( 1050, 550 );
  strokeWeight(1);
  stroke(#02C7D9);
  frameRate( 15 );
  background(background_color);
  fill(#FFFFFF,alpha);
  startX = new ArrayList();
  startY = new ArrayList();
  startTime = new ArrayList();
  startX.add(random(width));
  startY.add(random(height));
  startTime.add(time);
}

// Main draw loop
void draw(){
  if (random(100) < 2){
    startX.add(random(width));
    startY.add(random(height));
    startTime.add(time);
  }
  
  time += 1
  counter += 1  
 
  background(background_color);

  for(int i = 0; i < counter; i++){
    int dist = (time-startTime.get(i))*increase
    ellipse(startX.get(i),startY.get(i),dist,dist);
  }
}
