void pause () {
  theme.pause();

  //text
  textSize(150);
  fill(0);
  text("paused", 402, 350);
  fill(purple);
  text("paused", 395, 353);

  //icon
  strokeWeight(4);
  fill(pink);
  tactile(700, 40, 60, 60);
  rect(700, 40, 60, 60);
  textSize(40);
  stroke(purple);
  strokeWeight(8);
  line(720, 54, 720, 86);
  line(740, 54, 740, 86);
}


void pauseClicks () {
  if (mouseX > 700 && mouseX < 760 && mouseY > 40 && mouseY < 100) {
    mode = GAME;
    theme.play();
  }
}
