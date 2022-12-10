void rebound(PVector pos1, PVector pos2, float yValue, float Radi){
  //Reset time
  ball.t = 0;
  //change velocities (as if on a flat plane)
  if (ball.vel.y < 0){
    ball.pos.y = yValue + Radi + 1;//To prevent ball being stuck after bounce ; increase 1 for safer results ***CLIPPING OCCURS FOR VELOCITIES WHEN CLOSE TO LINE
  }
  else{
    ball.pos.y = yValue - Radi - 1;//To prevent ball being stuck after bounce ; increase 1 for safer results
  }
  ball.vel.y *= -reboundConst;
  //apply rotation matrix
  float ang = atan( (pos1.y-pos2.y) / (pos1.x-pos2.x) );
  float[][] velVec = { {ball.vel.x} ,
                       {ball.vel.y} };// Velocity of ball as a vector
  float[][] rotMat = { {cos(ang), -sin(ang)} , 
                       {sin(ang),  cos(ang)} };// Rotation matrix (ccw) [CHECK WORKS FOR VARYING ANGLES***]
  PVector resVelVec = new PVector(0,0);
  resVelVec.x = (rotMat[0][0] * velVec[0][0]) + (rotMat[0][1] * velVec[1][0]);
  resVelVec.y = (rotMat[1][0] * velVec[0][0]) + (rotMat[1][1] * velVec[1][0]);
  
  ball.vel.x = resVelVec.x;
  ball.vel.y = resVelVec.y;
}
