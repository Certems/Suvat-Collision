float grad = 0;
float gradient(PVector Coord1, PVector Coord2){ //Input two coordinates
  grad = (Coord1.y - Coord2.y) / (Coord1.x - Coord2.x);
  return grad;
}

float vecMag(PVector vec){
  float magnitude = sqrt( pow(vec.x,2) + pow(vec.y,2) );
  return magnitude;
}
