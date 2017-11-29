wave wave0;
wave wave1;

void setup() {
  size(750,200);
  wave0 = new wave(new PVector(50,75),50,20,400);
  wave1 = new wave(new PVector(300,100),100,40,220);

}

void draw() {
  background(255);
  wave0.calculate();
  wave0.display();
  
  wave1.calculate();
  wave1.display();


}