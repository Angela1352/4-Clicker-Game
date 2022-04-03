void gameover () {
  background(0, 255, 0);
  theme.pause();
  gameover.play();

  textFont(endgame);
  text("GAMEOVER", 400, 300);
  textSize(50);
  text("High Score:" + highscore, 400, 400);

  //highscore
  if (score > highscore) {
    highscore = score;
  } 
}


void gameoverClicks () {
  mode = INTRO;
  reset();
  theme.rewind();
  gameover.rewind();
}
