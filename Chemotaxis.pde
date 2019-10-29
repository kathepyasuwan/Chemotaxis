 Bacteria[] group = new Bacteria[1000];
  void setup() {
    size(500, 500);
    background(0, 0 ,0);
    for(int i = 0; i < group.length; i++) {
      group[i] = new Bacteria(250, 250);
    }
  }
  void draw() {
    background(0, 0 ,0);
    for (int i = 0; i < group.length; i++){
      group[i].walk();
      group[i].show(); 
    }
  }
  class Bacteria {
    int myX, myY, col;
    Bacteria(int x, int y) {
      myX = x;
      myY = y;
      col = 255;
    }
    void walk() {
      myX = myX + (int)(Math.random() * 10) - 5;
      myY = myY + (int)(Math.random() * 10) - 5;
    }
    void show() {
     fill(col, col, col);
     ellipse(myX, myY,3 ,3);
    }
  }
