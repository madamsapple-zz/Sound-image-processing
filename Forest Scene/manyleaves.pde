int size; 

class manyleaves {

  //forms a list of leaf objects
  ArrayList<leaf> mult_leaves;

  //accepts amount of leaf objects
  manyleaves(int len) {
    size = len;
    mult_leaves = new ArrayList<leaf>(size);
  }


  void update() {

    //add one leaf
    mult_leaves.add(new leaf(int(random(-40, width -20)), int(random(-10, 7)),
    random(1, 4), random(1, 3),
    random(0.0, 0.02), random(0.02, 0.05)));

    for (int i = 0; i < size; i++) {
      leaf each = mult_leaves.get(i);
      //update each leaf in the array
      each.update();
    }
  }

  void display() {
    for (int i = 0; i < (size); i++) {
      leaf each = mult_leaves.get(i);
      //display each leaf in the array
      each.display();
    }
  }
}
