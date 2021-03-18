class Spaceship {
  // member variables
  int x, y, health, lives, ammo, rad;

  // constructor
  Spaceship() {
    x = 0;
    y = 0;
    health = 100;
    lives = 3;
    ammo = 1000;
    rad = 25;
  }

  // display method
  void display(int x, int y) {
    this.x = x;
    this.y = y;
    rectMode(CENTER);
    fill(128);
    stroke(80);
    rect(x-15, y+10, 7, 7);
    rect(x+15, y+10, 7, 7);
    line(x-30, y-10, x-30, y+5);
    line(x+30, y-10, x+30, y+5);
    triangle(x, y-15, x+35, y+10, x-35, y+10);
    ellipse(x, y, 20, 70);
  }
  
  // Detect rock vs spaceship
  boolean rockIntersection(Rock rock){
    float distance = dist(x,y,rock.x,rock.y);
    if(distance < rad + rock.rad){
      return true;
    } else {
      return false;
    }
  }
}
