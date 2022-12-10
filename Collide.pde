boolean Collide(PVector point1, PVector point2, PVector ParticlePos, float Radi){ //Only for lines
  float m = gradient(point1, point2);
  
  float y = (m*(ParticlePos.x - point1.x)) + (point1.y);//Equation of line is; y = m(x-x1)+y1
  
  // WITHIN Y COORDS
  boolean condition1 = ParticlePos.y < (y+Radi); //IF WITHIN BOUNDARY
  boolean condition2 = ParticlePos.y > (y-Radi);
  boolean condition3 = (condition1 && condition2);
  //------
  // WITHIN X COORDS
  boolean condition4;
  boolean condition5;
  condition4 = ParticlePos.x < point2.x;
  condition5 = ParticlePos.x > point1.x;
  if ( (point1.x - point2.x) > 0 ){//=>1 is lower x value
    condition4 = ParticlePos.x < point1.x;
    condition5 = ParticlePos.x > point2.x;
  }
  boolean condition6 = (condition4 && condition5);
  //------
  
  if (condition3 && condition6){
    println("COLLISION");
    rebound(point1,point2,y,Radi);
    return true;
  }
  else{
    return false;
  }
}
