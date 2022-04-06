void game () {
  background(yellow);
  image(background, 400, 400, 800, 800);

  //pause button
  strokeWeight(4);
  fill(pink);
  tactile(700, 40, 60, 60);
  rect(700, 40, 60, 60);
  stroke(purple);
  strokeWeight(8);
  line(720, 54, 720, 86);
  line(740, 54, 740, 86);

  //display target
  fill(0);
  stroke(0);
  strokeWeight(5);
  image(selectedIcon, x, y, size, size);

  //text
  textSize(40);
  text("Score:" + score, 300, height-80);
  text("Lives:" + lives, 500, height-80);

  //moving
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < size/2 || x > width-size/2) {
    vx = vx * -1;
  }
  if (y < size/2 || y > height-size/2) {
    vy = vy * -1;
  }
}


void gameClicks () {
  if (dist(mouseX, mouseY, x, y) < size/2) {
    score  = score + 1;
    coin.rewind();
    coin.play();
    vx = vx * 1.1;
    vy = vy * 1.1;
  } else if (mouseX > 700 && mouseX < 760 && mouseY > 40 && mouseY < 100) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    if (lives == 0) mode = GAMEOVER;
    bump.rewind();
    bump.play();
  }
}
