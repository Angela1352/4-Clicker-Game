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
  image(watermelon, 175, 182, 180, 190);
  image(orangeIcon, 405, 175, 152, 152);
  image(kiwi, 635, 175, 138, 138);

  tactile2(215, 300, 150, 150);
  icon7OnOff();
  rect(215, 300, 150, 150);
  tactile2(455, 300, 150, 150);
  icon9OnOff();
  rect(455, 300, 150, 150);
  image(avocado, 288, 370, 140, 170);
  image(pomegranate, 532, 375, 152, 152);

  //home
  fill(pink);
  stroke(0);
  tactile(300, 550, 200, 100);
  rect(300, 550, 200, 100);
  fill(0);
  textSize(60);
  text("home", 400, 585);

  //indicator
  fill(pink);
  stroke(0);
  circle(100, 550, 180);
  //image(selectedIcon, 50, 500);
}





void optionsClicks () {
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650) {
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
}


//stroke lightBlue and darkBlue
