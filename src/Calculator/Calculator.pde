Button[] numButtons = new Button[3];
Button[] opButtons = new Button[1];
String dVal = "0.0";

void setup() {
  size(200, 400);
  numButtons[0] = new Button(0, 350, 100, 50, "0", true);
  numButtons[1] = new Button(0, 300, 50, 50, "1", true);
  numButtons[2] = new Button(50, 300, 50, 50, "2", true);
  opButtons[0] = new Button(0, 100, 50, 50, "C", false);
}

void draw() {
  background(127);
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover();
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover();
  }
  updateDisplay();
}

void mousePressed() {
  for (int i=0; i<numButtons.length; i++) {
    if (numButtons[i].hover == true) {
      dVal += numButtons[i].val;
    }
  }
}

void updateDisplay() {
  fill(80);
  rect(10, 10, width-20, 80);
  fill(255);
  text(dVal, width-40, 65);
}

void performCalculation() {
}
