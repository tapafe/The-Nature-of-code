Mover[] movers = new Mover[10];

void setup() {
  size(640,360);
  background(255);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1,2),random(width),random(height)); 
  }
}

void draw() {
  background(255);

  for (int i = 0; i < movers.length; i++) {

    movers[i].update();
    println(movers[i].acceleration);
    movers[i].display();
    movers[i].checkEdges();
  }

}