class Button {
  // Member Variables
  PFont font;
  int x, y, w, h;
  String val;
  boolean hover, isNumber;
  color c1, c2;

  // Constructor 
  Button(int tempX, int tempY, int tempW, int tempH, String tempVal, boolean isNumber) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    val = tempVal;
    hover = false;
    c1 = #7693E0;
    c2 = #3157BC;
    font = createFont("AppleSDGothicNeo-Heavy-48.vlw", 32);
    this.isNumber = isNumber;
  }

  // Display the Button
  void display() {
    if (isNumber == true) { // number buttons
      if (hover) {
        fill(c2);
      } else {
        fill(c1);
      }
      //rectMode(CENTER);
      rect(x, y, w, h, 10);
      fill(255);
      textAlign(CENTER);
      textFont(font);
      text(val, x+w/2, y+40);
    } else if(val.equals("C")) {
      if (hover) {
        fill(c2);
      } else {
        fill(c1);
      }
      //rectMode(CENTER);
      rect(x, y, w, h, 10);
      fill(255);
      textAlign(CENTER);
      textFont(font);
      text(val, x+w/2, y+40);
    } else {  // non-number buttons
      if (hover) {
        fill(c2);
      } else {
        fill(c1);
      }
      ellipseMode(CORNER);
      ellipse(x, y, w, h);
      fill(255);
      textAlign(CENTER);
      textFont(font);
      text(val, x+w/2, y+40);
    }
  }

  // Edge Detection
  void hover() {
    hover = mouseX > x && mouseX < x + w && mouseY > y && mouseY < y+h;
  }
}
