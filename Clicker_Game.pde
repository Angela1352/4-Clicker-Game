import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


// Angela Chen
// 2-3
// Mar 28, 2022


//MODE VARIABLES
int mode;
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
final int OPTIONS  = 4;

PFont candy;
PFont endgame;

PImage watermelon, orangeIcon, kiwi, pomegranate, avocado;
PImage background, picnic;


//TARGET VARIABLES
float x, y, d;
float vx, vy; //target velocity
int score, lives, highscore;


//COLOR PALLETTE
color pink        = #FFCFD2;
color orange      = #FDE4CF;
color yellow      = #FBF8CC;
color lightBlue   = #90DBF4;
color purple      = #A3C4F3;
color turquoise   = #98F5E1;
color green       = #B9FBC0;


//SOUND VARIABLES
Minim minim;
AudioPlayer theme, coin, bump, gameover;


//OTHER VARIABLES
int counter;
float slider, size;
PImage selectedIcon;
float ant, ant2;
boolean iconOn, icon1On;
boolean icon2On, icon3On;
boolean icon4On, icon5On;
boolean icon6On, icon7On;
boolean icon8On, icon9On;


void setup () {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);

  candy    = createFont("Candy.ttf", 100);
  endgame  = createFont("Endgame.otf", 100);

  imageMode(CENTER);
  watermelon  = loadImage("watermelon.png");
  orangeIcon  = loadImage("orange.png");
  kiwi        = loadImage("kiwi.png");
  pomegranate = loadImage("pomegranate.png");
  avocado     = loadImage ("avocado.png");
  background  = loadImage("background.jpg");
  picnic      = loadImage("picnic.png");

  //target initialization
  x = width/2;
  y = height/2;
  d = 300;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;
  highscore = 0;
  size = 150;

  reset();

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  coin  = minim.loadFile("coin.mp3");
  bump  = minim.loadFile("bump.mp3");
  gameover = minim.loadFile("gameover.wav");

  //initialize ant
  ant = -40;
  ant2 = 800;

  counter = 0;

  selectedIcon = watermelon;

  slider = 630;
}


void draw () {

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
