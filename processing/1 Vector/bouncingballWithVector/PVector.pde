class PVector{

  float x;
  float y;
  
  PVector(float x_, float y_){
    x = x_;
    y = y_;
  }
  
  void add(PVector v){
    y = y + v.y;
    x = x + v.x;
  }
  
  void sub(PVector v){
    y = y - v.y;
    x = x - v.x;
  }
  
  void mult(float n) {
   x = x * n;
   y = y * n;
 }
 
 void div(float n) {
   x = x / n;
   y = y / n;
 }
 
 float mag() {
   return sqrt(x*x + y*y);
  }
  
  void normalize(){
    float m = mag();
    if (m != 0){
      div(m);
    }
  }
}
}