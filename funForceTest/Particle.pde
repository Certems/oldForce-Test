class Particle{
  //variables
  float m;
  PVector pos;
  PVector F = new PVector(0,0);
  PVector vel = new PVector(0,0);
  PVector acc = new PVector(0,0);
  Particle(float mass, PVector InitialPos){
    //changed variables
    m = mass;
    pos = InitialPos;
  }
  
  void upRforce(){
    PVector force = Rforce( IntForce(m) , ExtForce(), mouseForce(pos) );
    F.x = force.x;
    F.y = force.y;
  }
  void upAcc(){ //update the acceleration of the particle (pvector)
    acc.x = F.x / m;
    acc.y = F.y / m;
  }
  void upVel(){ //update the velocity of the particle ""
    vel.x += acc.x /100;
    vel.y += acc.y /100;
  }
  void upPos(){ //update the position of the particle ""
    pos.x += vel.x;
    pos.y += vel.y;
  }
  void upGra(){ //update the graphics of the particle
    //pass -- effects + image
    //ellipse(pos.x, pos.y,  10,10);
    float theta = HorizonTheta(vel);
    pushStyle(); //--
    rectMode(CENTER);
    pushMatrix(); //----
    translate(pos.x,pos.y);
    rotate( theta );
    image(ship, -25,-10);
    //rect(0,0,  20,10);
    ellipse(10,0,  5,5);
    popMatrix();  //----
    popStyle(); //--
  }
  void AccArrow(){
    pushStyle();
    stroke(255,0,0);
    strokeWeight(5);
    line(pos.x,pos.y,  acc.x+pos.x,acc.y+pos.y);
    popStyle();
  }
  void VelArrow(){
    pushStyle();
    stroke(0,255,0);
    strokeWeight(3);
    line(pos.x,pos.y,  vel.x+pos.x,vel.y+pos.y);
    popStyle();
  }
  void RforceArrow(){
    pushStyle();
    stroke(0,0,255);
    strokeWeight(1);
    line(pos.x,pos.y,  F.x+pos.x,F.y+pos.y);
    popStyle();
  }
  void edgeMove(){ //move particle when near edge e.g 200<x<650
    if ( pos.x > uppLim+1 ){
      pos.x = uppLim+1;
    }
    if ( pos.x < lowLim-1 ){
      pos.x = lowLim-1;
    }
  }
  
}
