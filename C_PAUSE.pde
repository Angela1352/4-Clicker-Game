void pause () {
  theme.pause();

  //text
  textSize(150);
  text("paused", 400, 350);
}


void pauseClicks () {
  if (dist(mouseX, mouseY, 100, 100) < 50) {
    mode = GAME;
    theme.play();
  }
}
