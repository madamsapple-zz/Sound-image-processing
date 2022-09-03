
//screen width and height
int w = 800;
int h = 800;

PFont font;

import processing.sound.*;

//filter for frequency modulation
BandPass bandpass;
//triangle wave
TriOsc triangle;
//bool var to identify when triangle and sine wave are created
boolean tri;

//sine wave;
SinOsc sine_wav;
boolean sine;

//pizza object
Pizza pizza;

//onion makes triangle wave
//picture dimensions
PImage onion;
int onion_w = 600/6;
int onion_h = 600/6;
float onion_x = w - (w/6.5);
float onion_y = h/6.5;
float o_topping_w = (600/2.5);
float o_topping_h = (600/2.5);

//basil makes sine wave
//picture dimensions
PImage basil;
float basil_w = 1200/7;
float basil_h = 800/7;
float basil_x = w - (w/5);
float basil_y = h/2.5;

//dimens of basil and onion toppings on pizza
float b_topping_w = (532/2);
float b_topping_h = (483/2);

//cheese color changes with freq
float cheese_col1 = 244;
float cheese_col2 = 230;

//dimensions of volume slider
float vbar_x = w/12;
float vbar_y = (h - (h/10));
int vbar_w = 230;
int vbar_h = 10;

//frequency bar
int fbar_w = 230;
int fbar_h = 10;
float fbar_x = w - w/12 - fbar_w;
float fbar_y = h - h/10;

//vol and freq are scrollbar objects
HScrollbar vol_bar;
HScrollbar freq_bar;

float freq;

void setup() {
  size(800, 800);

  vol_bar = new HScrollbar(vbar_x, vbar_y, vbar_w, vbar_h, 1);
  freq_bar = new HScrollbar(fbar_x, fbar_y, fbar_w, fbar_h, 2);
  
  bandpass = new BandPass(this);

  pizza = new Pizza(w/26.7, h/6.7, 300);
}

void draw() {

  background(0);

  font = loadFont("new.vlw");
  textFont(font);

  //load onion img and text beneath
  onion = loadImage("redonions.jpeg");
  onion.resize(onion_w, onion_h);
  image(onion, onion_x, onion_y);
  pushMatrix();
  fill(204, 135, 212);
  text("use\nonions!", onion_x, onion_y+ onion_h+20);
  popMatrix();

  //load basil img and its corresponding text 
  basil = loadImage("basil.jpeg");
  basil.resize(int(basil_w), int(basil_h));
  image(basil, basil_x, basil_y);
  pushMatrix();
  fill(84, 209, 59);
  text("use\nbasil!", basil_x, basil_y+ basil_h+20);
  popMatrix();

  pizza.display();
  ellipseMode(CORNER);

  vol_bar.update();
  vol_bar.display();
  pushMatrix();
  fill(255, 209, 176);
  text("how loud is your pizza?", vbar_x - 30, vbar_y + vbar_h + 40);
  popMatrix();


  freq_bar.update();
  freq_bar.display();
  pushMatrix();
  fill(150, 202, 250);
  textSize(23); 
  text("are your toppings high or low enough?", fbar_x - 70, fbar_y + fbar_h + 40);
  popMatrix();


  //triangle wave is onion
  //if this topping is true/pressed, then generate a triangle wave
  //and show only this topping on the pizza
  if (tri == true) {
    PImage onion_topping = loadImage("chopped-onions-600x600.png");

    onion_topping.resize(int(o_topping_w), int(o_topping_h));
    image(onion_topping, pizza.xpos + 30, pizza.ypos + 30);
    triangle = new TriOsc(this);
  }
  //sine wave is basil
  else if (sine == true) {
    PImage basil_topping = loadImage("basils.png");

    basil_topping.resize(int(b_topping_w), int(b_topping_h));
    image(basil_topping, pizza.xpos + 19, pizza.ypos + 30);
    sine_wav = new SinOsc(this);
  }
}

void keyPressed() {
  if (keyPressed) {
    //if 'b' is pressed for Basil
    if (key == 'b' || key == 'B') {
      //only make a sine wave then, not a triangle one
      tri = false;
      sine = true;
    }
    //if 'o' is pressed for Onion
    else if (key == 'o' || key == 'O') {
      //vice versa
      sine = false;
      tri = true;
    }
  }
}

//Pizza class
class Pizza {

  float xpos;
  float ypos;
  //volume controls the pizza size
  float volume;

  Pizza (float x, float y, float diameter) {
    xpos = x;
    ypos = y;
    volume = diameter;
  }

  void display() {
    //main crust
    fill(247, 219, 161);
    circle(xpos, ypos, volume);

    //sauce base
    fill(200, 60, 0);
    circle(xpos + 15, ypos + 15, volume - 30);

    //cheese
    fill(250, cheese_col1, cheese_col2);
    circle(xpos + 30, ypos + 30, volume - 60);
  }
} 
