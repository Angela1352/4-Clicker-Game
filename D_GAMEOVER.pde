void gameover () {
  image(picnic, 400, 400, 800, 800);
  //theme.pause();
  //gameover.play();

  textFont(endgame);
  textSize(150);
  fill(0);
  text("GAMEOVER", 402, 300);
  fill(turquoise);
  text("GAMEOVER", 396, 297);
  textSize(50);
  fill(0);
  text("High Score:" + highscore, 400, 420);

  //highscore
  if (score > highscore) {
    highscore = score;
  }


  noTint();
  image(watermelon, 120, 120, 160, 160);
  image(orangeIcon, 680, 690, 150, 150);
  image(pomegranate, 250, 160, 100, 100);
  image(kiwi, 580, 680, 120, 120);
  image(avocado, 120, 680, 120, 120);

  //ant1
  fill(0);
  stroke(0);
  ellipse(ant+40, 540, 20, 20);
  ellipse(ant+53, 540, 10, 10);
  ellipse(ant+65, 540, 12, 12);
  ellipse(ant+79, 540, 15, 15);

  strokeWeight(2);
  line(ant+55, 525, ant+50, 540);
  line(ant+63, 525, ant+58, 540);
  line(ant+70, 525, ant+69, 540);

  line(ant+55, 525, ant+38, 515);
  line(ant+63, 525, ant+50, 515);
  line(ant+70, 525, ant+80, 515);

  line(ant+50, 540, ant+55, 555);
  line(ant+58, 540, ant+63, 555);
  line(ant+69, 540, ant+70, 555);

  line(ant+55, 555, ant+38, 565);
  line(ant+63, 555, ant+50, 565);
  line(ant+70, 555, ant+80, 565);

  line(ant+80, 538, ant+95, 535);
  line(ant+80, 542, ant+95, 545);

  //move & loop ant
  ant = ant + 7;
  if (ant > 900) {
    ant = -400;
  }

  //continue text
  counter = counter + 1;
  if (counter < 25) {
    textFont(candy);
    textSize(40);
    text("press anywhere to continue", 400, 620);
  } else if (counter > 15 ) {
  }
  if (counter == 40) {
    counter = 0;
  }
}


void gameoverClicks () {
  mode = INTRO;
  reset();
  theme.rewind();
  gameover.rewind();
}
