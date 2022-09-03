//leaf class for a single leaf object
class leaf {
  
  //2 position vectors for two sprites
  //common vel and acc affect both sprites
  PVector position;
  PVector position2;
  PVector velocity;
  PVector acceleration;
  
  //first 2 coords: x and y pos
  //then velocity x and y values
  //lastly acceleration x and y values
  leaf(int xpos, int ypos, float vel_x, float vel_y, float acc_x, float acc_y) {
    
    position = new PVector(xpos, ypos);
    position2 = new PVector(random(-60, 60) + xpos, ypos + random(-20, 20));
    velocity = new PVector(vel_x, vel_y);
    acceleration = new PVector(acc_x, acc_y);
  }

  void display() {
    image(maple, position2.x, position2.y);
    //tint changes color of sprites as they fall
    tint(position.x/2, position.y*3, 40);
    image(autumn, position.x, position.y);
    tint(position2.x/1.8, 200 - position2.y, 40);
  }

  void update() {

    //if sprites go anywhere near the bottom, they are collected aka
    //their motion is stopped
    if ( (position.y + 50) >= height  ) {
      velocity = new PVector(0, 0);
      acceleration = new PVector(0, 0);
    } 
    else if ( position2.y >= height) {
      velocity = new PVector(0, 0);
      acceleration = new PVector(0, 0);
      
    }
    //otherwise keep them in motion
    else {
      velocity.add(acceleration);
      position.add(velocity);
      position2.add(velocity);
    }
  }
}
