/*
Tommy Porter
 Sept 16
 Block: 1-3
 Colour Game
 */

//mode framework
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

//font and gif stuff
PFont mario;
PImage[] colourgif;
int numberOfFrames;
int f = 0;

//score variables
int score = 0;
int highscore = 0;

//timer variable
int timer = 800;


//Word Array
String[] words;

//colour array
color[] colors;

//colors
color red = (#FF0808);
color orange = (#FFAD08);
color green = (#27FF08);
color blue = (#0864FF);
color pink = (#FF4BC0);
color purple = (#BF4BFF);


//Random variable
int w = int(random(0, 6));
int c = int(random(0, 6));
int coinflip = int(random(0, 2));



//Matching variable
boolean matching = false;

void setup() {
  size(800, 800);
  mode = INTRO;

  //font
  mario = createFont("SuperMario256.ttf", 100);

  // gif array
  numberOfFrames = 6;
  colourgif = new PImage[numberOfFrames];

  int i = 0;
  while (i < numberOfFrames) {
    colourgif[i] = loadImage("frame_" +i+ "_delay-0.1s.gif");

    i++;
  }

  //words array
  words = new String[6];
  words[0] = "RED";
  words[1] = "ORANGE";
  words[2] = "GREEN";
  words[3] = "BLUE";
  words[4] = "PINK";
  words[5] = "PURPLE";



  //colors array
  colors = new color[6];
  colors[0] = red;
  colors[1] = orange;
  colors[2] = green;
  colors[3] = blue;
  colors[4] = pink;
  colors[5] = purple;
}

void draw() {
  //mode framework
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}
