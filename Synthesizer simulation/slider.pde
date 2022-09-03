/**
 Scrollbar file 
 move the scrollbars left and right to change the volume and frequency.
 
 The scrollbar class has been borrowed and adapted from the sketch here:
 https://processing.org/examples/scrollbar.html
 */
 
//stores and controls amplitude
float amp;

class HScrollbar {
  // width and height of bar
  int swidth, sheight;
  
  //width/height of button
  int button_w;           
  
  // x and y position of bar
  float xpos, ypos;       
  
  // x position of button
  float spos, newspos;    
  
  // max and min values of slider
  float sposMin, sposMax; 

  //checks if mouse hovers over slider button
  boolean over;
  //checks if mouse is clicked over slider button
  boolean locked;

  int oneortwo; //identifies if it is the vol or freq bar being used

  HScrollbar (float xp, float yp, int sw, int sh, int number) {
    swidth = sw;
    sheight = sh;
    button_w = sheight + 11;

    xpos = xp;
    ypos = yp;

    //coords for button
    spos = xpos; 
    newspos = spos;

    sposMin = xpos;
    sposMax = xpos + swidth;

    oneortwo = number;
  }

  void update() {
    //if mouse hovers
    if (overEvent()) {
      over = true;
    } else {
      over = false;
    }
    //if mouse clicks over button
    if (mousePressed && over) {
      locked = true;
    }
    if (!mousePressed) {
      locked = false;
    }
    //if mouse is clicked over volume bar
    if (locked && (oneortwo == 1)) {
      spos = mouseX;
      
      //map the sliding values of volume to match the wave's amplitude
      pizza.volume = map(mouseX, vbar_x, vbar_x + vbar_w, 300, 500);
      amp = map(mouseX, vbar_x, vbar_x + vbar_w, 0.0, 0.5);

      //basil topping resizing
      b_topping_w = map(mouseX, vbar_x, vbar_x + vbar_w, 532/2, 532 );
      b_topping_h = map(mouseX, vbar_x, vbar_x + vbar_w, 483/2, 483 );

      //onion topping resizing
      o_topping_w = map(mouseX, vbar_x, vbar_x + vbar_w, 600/2.5, 600/1.5 );
      o_topping_h = map(mouseX, vbar_x, vbar_x + vbar_w, 600/2.5, 600/1.5 );
      
      //if lowest and highest values are reached in sliding
      //less than bar's length
      if (spos <= xpos) {
        spos = xpos;
        pizza.volume = 300;
        b_topping_w = 532/2;
        b_topping_h = 483/2;
        o_topping_w = 600/2.5;
        o_topping_h = 600/2.5;
        //no sound
        amp = 0.0;
      }
      //more than bar's length
      else if (spos >= (xpos + swidth - button_w)) {
        spos = xpos + swidth - button_w;
        pizza.volume = 500;
        b_topping_w = 532;
        b_topping_h = 483;
        o_topping_w = 600/1.5;
        o_topping_h = 600/1.5;

        amp = 0.5;
      }
    }

    //if the second bar aka freq bar is being used
    else if (locked && (oneortwo == 2)) {
      spos = mouseX;
      freq = map(mouseX, fbar_x, fbar_x + fbar_w, 70, 2700);
      cheese_col1  = map(mouseX, fbar_x, fbar_x + fbar_w, float(244), float(186));
      cheese_col2  = map(mouseX, fbar_x, fbar_x + fbar_w, float(230), float(2));

      //less than bar's length
      if (spos <= xpos) {
        spos = xpos;
        freq = 70;
      }
      //more than bar's length
      else if (spos >= (xpos + swidth - button_w)) {
        spos = xpos + swidth - button_w;
        freq = 2700;
      }
    }
    //play the wave only when volume bar is used
    if (locked && (oneortwo == 1)) {

      if (tri == true) {
        triangle.play(freq, amp);
      } else if (sine == true) {
        sine_wav.play(freq, amp);
      }
    }
  }

  boolean overEvent() {
    if (mouseX > spos && mouseX < xpos+swidth &&
      mouseY > ypos && mouseY < ypos+sheight) {
      return true;
    } else {
      return false;
    }
  }

//shows the sliding bar and button
  void display() {
    noStroke();
    fill(204, 130, 203);
    //slider
    rect(xpos, ypos, swidth, sheight);
    if (over || locked) {
      fill(255, 200, 180);
    } else {
      fill(255, 94, 121);
    }
    //button
    rect(spos, ypos - 4.5, button_w, button_w);
  }
}
