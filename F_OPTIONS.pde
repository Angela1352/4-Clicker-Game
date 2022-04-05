void options () {
  background(orange);

  //fruit icons

  strokeWeight(4);
  tactile2(100, 100, 150, 150);
  icon1OnOff();
  rect(100, 100, 150, 150);
  tactile2(330, 100, 150, 150);
  icon3OnOff();
  rect(330, 100, 150, 150);
  tactile2(560, 100, 150, 150);
  icon5OnOff();
  rect(560, 100, 150, 150);
  image(watermelon, 175, 175, 138, 138);
  image(orangeIcon, 405, 175, 138, 138);
  image(kiwi, 635, 175, 134, 134);

  tactile2(215, 300, 150, 150);
  icon7OnOff();
  rect(215, 300, 150, 150);
  tactile2(455, 300, 150, 150);
  icon9OnOff();
  rect(455, 300, 150, 150);
  image(avocado, 288, 375, 138, 138);
  image(pomegranate, 532, 375, 138, 138);

  //home
  fill(pink);
  stroke(0);
  tactile(100, 570, 200, 100);
  rect(100, 570, 200, 100);
  fill(0);
  textSize(60);
  text("home", 200, 605);

  //indicator
  fill(yellow);
  stroke(0);
  rect(520, 510, 200, 200);
  image(selectedIcon, 620, 610, size, size);

  //slider for size
  stroke(0);
  strokeWeight(8);
  line(410, 530, 410, 730);
  fill(purple);
  strokeWeight(6);
  tactile3(410, slider, 40);
  circle(410, slider, 40);

  size = map(slider, 730, 530, 100, 190);
}





void optionsClicks () {
  if (mouseX > 100 && mouseX < 300 && mouseY > 570 && mouseY < 670) {
    mode =  INTRO;
  }

  if (mouseX > 100 && mouseX < 250 && mouseY > 100 && mouseY < 250) {
    icon1On = !icon1On;
    icon3On = false;
    icon5On = false;
    icon7On = false;
    icon9On = false;
  }

  if (mouseX > 330 && mouseX < 480 && mouseY > 100 && mouseY < 250) {
    icon1On = false;
    icon3On = !icon3On;
    icon5On = false;
    icon7On = false;
    icon9On = false;
  }

  if (mouseX > 560 && mouseX < 710 && mouseY > 100 && mouseY < 250) {
    icon1On = false;
    icon3On = false;
    icon5On = !icon5On;
    icon7On = false;
    icon9On = false;
  }

  if (mouseX > 215 && mouseX < 365 && mouseY > 300 && mouseY < 450) {
    icon1On = false;
    icon3On = false;
    icon5On = false;
    icon7On = !icon7On;
    icon9On = false;
  }

  if (mouseX > 455 && mouseX < 605 && mouseY > 300 && mouseY < 450) {
    icon1On = false;
    icon3On = false;
    icon5On = false;
    icon7On = false;
    icon9On = !icon9On;
  }

  if (icon1On == true) {
    selectedIcon = watermelon;
  } else if (icon3On == true) {
    selectedIcon = orangeIcon;
  } else if (icon5On == true) {
    selectedIcon = kiwi;
  } else if (icon7On == true) {
    selectedIcon = avocado;
  } else if (icon9On == true) {
    selectedIcon = pomegranate;
  }

  controlSlider();
}


void optionsDragged () {
  controlSlider();
}


//stroke lightBlue and darkBlue
