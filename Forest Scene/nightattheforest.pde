/**
I have adapted and taken help of the code from the following link:
https://git.arts.ac.uk/tarmitage/sip-2022/tree/main/week9/code_examples/particle_system

With the help of the 3 files in the particle systems folder,
I used the concepts of Array Lists and vector quantities(velocity,
acceleration) to help construct this project as well.
**/

//images for backdrop and leaves
PImage autumn;
PImage tree;
PImage maple;

//dynamic array list of leaves
ArrayList<manyleaves> pile;

void setup() 
{
  autumn = loadImage("leaf.png");
  autumn.resize(800/int(8), 804/int(8));
  maple = loadImage("pngegg.png");
  tree = loadImage("tre.png");
  tree.resize(555*6, 352*3);
  size(800, 800);
  
  //pile is object of arraylist "manyleaves"
  pile = new ArrayList<manyleaves>(1);
}

void draw() { 
  background(7, 22, 97);
  
  //moon
  circle(650, 110, 100);
  
  image(tree, 100, 100);
  tree.resize(555*2, 352*2);
  image(tree, -480, 90);

  //each iten in array list is updated and then shown with
  //updated locations/motion
  for (manyleaves piece : pile) {
    piece.update();
    piece.display();
  }
} 

void keyPressed() {
  //s key sets up sketch once again/refreshes it
  if (key == 's') {
    setup();
  } 
  //pressing 'a' key simulates one falling leaf motion in the forest
  else if (key == 'a') {
    pile.add(new manyleaves(1));
  }
}
