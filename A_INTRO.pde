void intro () {
  theme.play();
  gameover.pause();
  background(orange);
  tint(255, 200);
  image(picnic, 400, 400, 800, 800);


  // textFont();
  textSize(80);
  textFont(candy);
  text("FRUIT CLICKER", 400, 290);

  strokeWeight(4);
  fill(pink);
  tactile(100, 450, 200, 100);
  rect(100, 450, 200, 100);
  tactile(500, 450, 200, 100);
  rect(500, 450, 200, 100);

  fill(0);
  textSize(40);
  text("play", 200, 490);
  text ("options", 600, 490);

  //fruits
  noTint();
  image(watermelon, 120, 120, 190, 200);
  image(orangeIcon, 680, 690, 150, 150);
  image(pomegranate, 250, 160, 100, 100);
  image(kiwi, 580, 680, 120, 120);
  image(avocado, 120, 680, 120, 140);

  //ant1
  fill(0);
  stroke(0);
  ellipse(ant+40, 590, 20, 20);
  ellipse(ant+53, 590, 10, 10);
  ellipse(ant+65, 590, 12, 12);
  ellipse(ant+79, 590, 15, 15);

  strokeWeight(2);
  line(ant+55, 575, ant+50, 590);
  line(ant+63, 575, ant+58, 590);
  line(ant+70, 575, ant+69, 590);

  line(ant+55, 575, ant+38, 565);
  line(ant+63, 575, ant+50, 565);
  line(ant+70, 575, ant+80, 565);

  line(ant+50, 590, ant+55, 605);
  line(ant+58, 590, ant+63, 605);
  line(ant+69, 590, ant+70, 605);

  line(ant+55, 605, ant+38, 615);
  line(ant+63, 605, ant+50, 615);
  line(ant+70, 605, ant+80, 615);

  line(ant+80, 588, ant+95, 585);
  line(ant+80, 592, ant+95, 595);


  //ant2
  ellipse(ant2+79, 390, 20, 20);
  ellipse(ant2+65, 390, 10, 10);
  ellipse(ant2+53, 390, 12, 12);
  ellipse(ant2+40, 390, 15, 15);

  strokeWeight(2);
  line(ant2+55, 375, ant2+50, 390);
  line(ant2+61, 375, ant2+62, 390);
  line(ant2+70, 375, ant2+69, 390);

  line(ant2+55, 375, ant2+38, 365);
  line(ant2+61, 375, ant2+70, 365);
  line(ant2+70, 375, ant2+80, 365);

  line(ant2+50, 390, ant2+55, 405);
  line(ant2+61, 390, ant2+62, 405);
  line(ant2+69, 390, ant2+70, 405);

  line(ant2+55, 405, ant2+38, 415);
  line(ant2+62, 405, ant2+68, 415);
  line(ant2+70, 405, ant2+80, 415);

  line(ant2+60, 388, ant2+26, 386);
  line(ant2+60, 392, ant2+26, 395);

  //move & loop ant
  ant = ant + 7;
  ant2 = ant2 - 5;

  if (ant > 900) {
    ant = -400;
  }

  if (ant2 < -100) {
    ant2 = 1200;
  }
}



void introClicks () {
  if (mouseX > 100 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    mode = GAME;
  }

  if (mouseX > 500 && mouseX < 700 && mouseY > 450 && mouseY < 550) {
    mode =  OPTIONS;
  }
}
