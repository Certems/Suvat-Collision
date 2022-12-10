class Particle{
  float r;
  float t;
  float timeStep;
  PVector pos;
  PVector vel;
  PVector acc;
  Particle(PVector position, PVector velocity, PVector acceleration, float radius){
    pos = position;
    vel = velocity;
    acc = acceleration;
    r = radius;
    t = 0;
    timeStep = 1/frameRate;
  }
  void plot(){
    ellipse(pos.x, pos.y, r, r);
  }
  void updateVel(){
    vel.x += acc.x;
    vel.y += acc.y;
  }
  void updatePos(){
    pos.x += vel.x;
    pos.y += vel.y;
  }
  void updateTime(){
    t += timeStep;
  }
  void plotTrail(){//NOT WORKING CURRENTLY*** VALUES NOT BEING ADDED TO LIST OR NOT BEING OUTPUT CORRECTLY
    trails.add(pos);
    for ( int i=0; i<trails.size() ; i++ ){
      ellipse(trails.get(i).x,trails.get(i).y,2,2);
    }
  }
  void plotVelArrow(){
    pushStyle();
    stroke(255,100,100);
    line(pos.x,pos.y, (pos.x + (vel.x *5)), (pos.y + (vel.y *5)));
    popStyle();
  }
  void plotAccArrow(){
    pushStyle();
    stroke(100,100,255);
    line(pos.x,pos.y, (pos.x + (acc.x *5)), (pos.y + (acc.y *5)));
    popStyle();
  }
  PVector posGive(){ // POSGIVE TEMP### UNSURE HOW TO RETRIEVE WITHOUT FUNCTION
    return pos;
  }
}
