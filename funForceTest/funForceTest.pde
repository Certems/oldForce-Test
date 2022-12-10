Particle p1 = new Particle( 10, new PVector(200,400) );
Cloud c1 = new Cloud( new PVector(600,400) );
windSnake s1 = new windSnake( new PVector(800, 400) );

//PVector cloudVel = new PVector(0,0);
//PVector cloudPos = new PVector(600,0);

//PImage cloudBackground;
PImage ship;

void setup(){
  size(800,800);
  //frameRate(10);
  //cloudBackground = loadImage("cloudBack2.png");
  ship = loadImage("ship1.png");
  
}
void draw(){
  //background(140,230,220);
  background(255,200,200);
  
  //UI
  
  //BACKGROUND
  //cloudVel.x = 0;
  //if ( p1.pos.x > uppLim ){ //CHANGE 800 TO SIZE X
  //  cloudVel.x -= p1.vel.x; 
  //}
  //if ( p1.pos.x < lowLim ){
  //  cloudVel.x -= p1.vel.x;
  //}
  //cloudPos.x += cloudVel.x;
  //cloudPos.y += cloudVel.y;
  //image(cloudBackground,   cloudPos.x,cloudPos.y);
  
  // BACKDROPS
  
  c1.upAcc();
  c1.upVel();
  c1.upPos();
  
  c1.upGra();
  
  
  s1.upAcc();
  s1.upVel();
  s1.upPos();
  
  s1.upGra();
  
  // PARTICLES
  
  p1.upRforce();
  p1.upAcc();
  p1.upVel();
  p1.upPos();
  p1.edgeMove();
  
  p1.upGra();
  p1.AccArrow();
  p1.VelArrow();
  p1.RforceArrow();
  
  ellipse(mouseX,mouseY,  5,5);
  println(frameRate);
  
}
