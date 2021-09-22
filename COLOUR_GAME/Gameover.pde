void gameover() {
  background(255);
  //Game over text
  textAlign(CENTER, CENTER);
  textSize(100);
  fill(0);
  text("GAME OVER", 400, 300);

  //Score and Highscore text
  textSize(40);
  text("Score: " + score, 400, 575);
  text("Highscore: " + highscore, 400, 700);

  //Setting highscore
  if (score > highscore) {
    highscore = score;
  }
}

void gameoverClicks() {
  w = int(random(0, 6));
  mode = INTRO;
  score = 0;
}
