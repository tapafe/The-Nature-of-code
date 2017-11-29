import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList<Box> boxes;
 
void setup() {
  size(400,300);
  boxes = new ArrayList<Box>();
}
 
void draw() {
  background(255);
  if (mousePressed) {
    Box p = new Box(mouseX,mouseY);
    boxes.add(p);
  }
  
  for (Box b: boxes) {
    b.display();
  }
}