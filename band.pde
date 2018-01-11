int midX,midY;
int ballX,ballY;
boolean oscillate = false;
boolean onString = true;
int radius = 10;
int rollSpeed = 0.025;
int speed = 0;
int gravity = 0.5;
int oldY;

void setup(){ 
  size(screen.width, screen.height);
  frameRate(15);
  background(#000000);
  midX = width/2;
  midY = height/2;
  ballX = midX;
  ballY = midY-radius;
  halfHeight = height/2;
  stroke(#FFFFFF);
  oldY = midY
} 

void draw(){
  background(#000000);

  if(oscillate){
    if (midY < halfHeight){
      midY = halfHeight + abs(halfHeight-midY)*0.9;
    }
    else{
      midY = halfHeight - abs(halfHeight-midY)*0.9;
    }
  }

  if(leftDist()<radius || rightDist()<radius){
    onString = true;
    rollBall();
  }
  else{
    onString = false;
    gravBall();
  }

  ellipse(ballX,ballY,radius*2,radius*2)

  line(0,height/2,midX,midY);
  line(width,height/2,midX,midY);
}

void gravBall(){
  ballY -= speed;
  speed -= gravity;
  if(speed < -1*radius){
    speed += gravity;
  }
}

void rollBall(){
  if(ballY+radius < midY){
    ballY += rollSpeed*(midY-(ballY+radius));
  }
  if(ballY > midY){
    ballY -= rollSpeed*(midY-(ballY+radius));
  }
  if(ballX < midX){
    ballX += rollSpeed*(midX-ballX);
  }
  if(ballX > midX){
     ballX -= rollSpeed*(ballX-midX);
  }
}

void leftDist(){
  demo = sqrt(Math.pow((midY-halfHeight), 2) + Math.pow((midX-0), 2));
  numo = abs( (midY-halfHeight)*ballX - (midX-0)*ballY + midX*halfHeight - midY*0 );
  return((numo/demo)-radius);
}

void rightDist(){
  demo = sqrt(Math.pow((midY-halfHeight), 2) + Math.pow((midX-width), 2));
  numo = abs( (midY-halfHeight)*ballX - (midX-width)*ballY + midX*halfHeight - midY*width );
  return((numo/demo)-radius);
}

void mouseDragged(){
  oscillate = false;
  if(mouseY>halfHeight){
    oldY = midY;
    midY = mouseY;
    midX = mouseX;
    if(onString && oldY > midY){
      ballY=(oldY-radius);
    }
  }
}

void mouseReleased(){
  oscillate = true;
  if(onString){
    ballY = halfHeight - abs(halfHeight-midY)*0.9;
    speed = (midY-halfHeight)/6;
  }
}
