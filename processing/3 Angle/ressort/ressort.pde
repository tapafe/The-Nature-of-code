

PVector anchor;
PVector location;
float restLength;
float k = 0.1;
PVector force = PVector.sub(bob, anchor);
float currentLength = dir.mag();
float x = restLength - currentLength;

force.normalize();
force.mult(-1 * k * x);