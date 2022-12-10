PVector pos = new PVector(0,0);
PVector vel = new PVector(0,0);
PVector acc = new PVector(0,0);

Line l1 = new Line(new PVector(200,200), new PVector(300,400), 10);
Line l2 = new Line(new PVector(400,500), new PVector(700,200), 10);
Line l3 = new Line(new PVector(50,500), new PVector(700,750), 10);
Particle ball = new Particle(new PVector(400,300), new PVector(-2,-1), new PVector(0,9.81/100), 10);//g constant adjust here

float g = 9.81;//+ve is downwards
float reboundConst = 0.75;//Height loss per bounce
float timeStep;//magnitude at which t increases for SUVAT

ArrayList<PVector> trails = new ArrayList<PVector>();

void setup(){
  size(800,800);
  background(200,200,255);
}
void draw(){
  background(200,200,255);
  
  //Ball -- ONLY 1 POSSIBLE CURRENTLY ---COLLIDABLE OBJECTS ALL CHECK AGAINST ALL BALLS EACH FRAME (ONLY CHECK 1 CURRENTLY)
  ball.updateVel();
  ball.updatePos();
  ball.plot();
  ball.updateTime();
  //Ball effects
  ball.plotTrail();
  ball.plotVelArrow();
  ball.plotAccArrow();
  
  //Objects
  l1.plot();
  l1.colliding();
  l2.plot();
  l2.colliding();
  l3.plot();
  l3.colliding();
}
