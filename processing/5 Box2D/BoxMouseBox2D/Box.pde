class Box{
  
  Body body;
  float w,h;
 
  Box(float x, float y) {
    w = 16;
    h = 16;
    
    //Body
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(mouseX,mouseY));
    body = box2d.createBody(bd);
    
    //Shape like a polygon
    PolygonShape ps = new PolygonShape();
    
    float box2dW = box2d.scalarPixelsToWorld(w/2);
    float box2dH = box2d.scalarPixelsToWorld(h/2);
    ps.setAsBox(box2dW, box2dH);
 
    //define a fixture
    FixtureDef fd = new FixtureDef();
    fd.shape = ps;
    
    //define physics
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;
 
    body.createFixture(fd);
  }
 
  void display() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    float a = body.getAngle();
 
    pushMatrix();
    translate(pos.x,pos.y);
    rotate(-a);
    fill(175);
    stroke(0);
    rectMode(CENTER);
    rect(0,0,w,h);
    popMatrix();
  }
  
  void killBody(){
    box2d.destroyBody(body);
  }
}