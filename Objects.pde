class Line{
  PVector p1 = new PVector(0,0);
  PVector p2 = new PVector(0,0);
  float r;
  Line(PVector Coord1, PVector Coord2, float DetectionRadius){
    p1 = Coord1;
    p2 = Coord2;
    r = DetectionRadius;
  }
  void plot(){
    line(p1.x, p1.y, p2.x, p2.y);
  }
  void colliding(){
    Collide(p1 , p2 , ball.posGive() , r); //POSGIVE TEMP###
  }
}
