void reset() {
  x = width/2;
  y = height/2;
  d = 100;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;

  ant = -40;
  ant2 = 800;
}


void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(lightBlue);
  } else {
    stroke(0);
  }
}

void tactile2(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(green);
  } else {
    fill(yellow);
  }
}

void tactile3(int x, float y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(turquoise);
  } else {
    stroke(0);
  }
}


void icon1OnOff () {
  if (icon1On == true) {
    stroke(lightBlue);
  } else {
    stroke(0);
  }
}

void icon3OnOff () {
  if (icon3On == true) {
    stroke(lightBlue);
  } else {
    stroke(0);
  }
}

void icon5OnOff () {
  if (icon5On == true) {
    stroke(lightBlue);
  } else {
    stroke(0);
  }
}

void icon7OnOff () {
  if (icon7On == true) {
    stroke(lightBlue);
  } else {
    stroke(0);
  }
}

void icon9OnOff () {
  if (icon9On == true) {
    stroke(lightBlue);
  } else {
    stroke(0);
  }
}

void controlSlider () {
  if (mouseX > 400 && mouseX < 420 && mouseY > 530 && mouseY < 730) {
    slider = mouseY;
  }
}
