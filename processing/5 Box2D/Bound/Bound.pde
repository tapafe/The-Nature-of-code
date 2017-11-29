import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList<Box> boxes;
ArrayList<Boundary> boundaries;
 
void setup() {
  size(640,360);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -10);
  
  Boundary bound = new Boundary(random(0,400), 500, 200, 10);
  
  boxes = new ArrayList<Box>();
  boundaries = new ArrayList<Boundary>();
  
  boundaries.add(new Boundary(width/4,height-5,width/2-50,10));
  boundaries.add(new Boundary(3*width/4,height-50,width/2-50,10));
}
 
void draw() {
  
  background(255);
  box2d.step();
    
  
  //bound.display();
  
  if (mousePressed) {
    Box p = new Box(mouseX,mouseY);
    boxes.add(p);
  }

  for (Box b: boxes) {
    b.display();
  }
  
  for (Boundary wall: boundaries) {
    wall.display();
  }
}