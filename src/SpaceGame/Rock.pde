class Rock {
  // member variables
  int x,y,speed,rad,health;
  color c;
  PImage rock1,rock2;
  
  // constructor
  Rock(int x, int y, color c) {
    this.x = x;
    this.y = y;
    this.c = c;
    speed = int(random(3,9));
    health = 75;
    rad = 25;
    if(random(10)>5){
      rock1 = loadImage("rock1.png");
    } else {
      rock1 = loadImage("rock1.png");
    }
    
  }
  
  // display method
  void display() {
    if(random(10)>5){
      image(rock1,x,y);
    } else {
      image(rock2,x,y);
    }
    
    //rectMode(CENTER);
    //noStroke();
    //fill(c);
    //ellipse(x,y,50,50);
  } 
  
  void move() {
    y+=speed;
  }
  
  // Rock vs Laser Collision
  boolean laserIntersection(Laser laser){
    float distance = dist(x,y,laser.x,laser.y);
    if(distance < rad + laser.rad){
      return true;
    } else {
      return false;
    }
  }
  
  boolean reachedBottom() {
    if(y>height+50) {
      return true;
    } else {
      return false;
    }
  }
}
