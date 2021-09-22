void game() {

  //matching side
  fill(255);
  rect(0, 0, 400, 800);

  //not matching side
  fill(0);
  rect(400, 0, 400, 800);

  //matching sign
  textSize(50);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Matching", 200, 200);

  //not matching sign
  fill(255);
  text("Not", 600, 180);
  text("Matching", 600, 220);

  //timer
  timer = timer -8;
  if (timer == 0) {
    mode = GAMEOVER;
  }

  noStroke();
  fill(timer/4);
  rect(0, 650, timer, 75);

  //color words
  fill(colors[c]);
  text(words[w], 400, 400);

  //match or not a match
  if (w == c) {
    matching = true;
  } else {
    matching = false;
  }
}

void gameClicks() {

  //randomize word and colour
  w = int(random(0, 6));
  c = int(random(0,6));
  int coinflip = int(random(0, 2));
  if (coinflip == 0) {
    c = w;
  } else {
    while (c == w) {
      c=int(random(0, 6));
    }
  }

  //matching statement
  if (mouseX < 400 & matching == true) {
    score = score +1;
    timer = 800;
  } else if (mouseX > 400 & matching == false) {
    score = score +1;
    timer = 800;
  } else {
    mode = GAMEOVER;
  }
}
