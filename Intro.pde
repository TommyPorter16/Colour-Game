void intro() {
  background(255);

  //colour gif
  image(colourgif[f], 0, 0, width, height);
  f = f+1;
  if (f == numberOfFrames) f =0;

  //Intro text
  textAlign(CENTER, CENTER);
  textSize(100);
  textFont(mario);
  fill(0);
  text("COLOUR", 220, 300);
  fill(255);
  text("GAME", 620, 300);
}

void introClicks() {
  w = int(random(0, 6));
  int coinflip = int(random(0, 2));
  if (coinflip == 0) {
    c = w;
  } else {
    while (c == w) {
      c=c+1;
    }
  }
  timer = 800;
  mode = GAME;
}
