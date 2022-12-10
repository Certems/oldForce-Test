class Cloud{
  //variables
  PVector pos;
  PVector vel = new PVector(0,0);
  PVector acc = new PVector(0,0);
  Cloud(PVector InitialPos){
    pos = InitialPos;
  }
  
  void upAcc(){ //update the acceleration of the cloud (pvector)
    //pass
  }
  void upVel(){ //update the velocity of the cloud ""
    vel.x = 0;
    if ( p1.pos.x > uppLim ){ //CHANGE 800 TO SIZE X
      vel.x -= p1.vel.x; 
    }
    if ( p1.pos.x < lowLim ){
      vel.x -= p1.vel.x;
    }
  }
  void upPos(){ //update the position of the cloud ""
    pos.x += vel.x;
    pos.y += vel.y;
  }
  void upGra(){ //update the graphics of the cloud
    pushStyle();
    fill(40,40,40);
    ellipse(pos.x,pos.y,  50,50);
    popStyle();
  }
  
}


//---------------------------------------------------->


class windSnake{
  //varibales
  PVector acc = new PVector(0,0);
  PVector vel = new PVector(0,0);
  PVector pos;
  float windS = 5; //Determines snake speed
  int sneType = int( round( random(0,1) ) ); //Snake Type, e.g from 0-2 presets, where 0 and 2 are rarer values
  int sneLen = int( round( random(6,20) ) ); // "0,6" is the range of ellipses making a snake, e.g 6 at most, 3 at least
  windSnake(PVector position){
    //changed variables
    pos = position;
  }
  
  void upAcc(){
    acc.x = 2; //*** TEMP VALS , ACC IS MORE ARBITRARY -- BASED ON WINDSPEED??(windS)
    acc.y = 2; //*** to be IMPLEMENTED
  }
  void upVel(){
    vel.x = -windS;
    if ( p1.pos.x > uppLim ){ //CHANGE 800 TO SIZE X
      vel.x -= p1.vel.x -windS; 
    }
    if ( p1.pos.x < lowLim ){
      vel.x -= p1.vel.x +windS;
    }
  }
  void upPos(){
    pos.x += vel.x;
    pos.y += vel.y;
  }
  void upGra(){
    sneTypeDecider(sneType, pos, sneLen);
  }
}

void sneTypeDecider(int type , PVector position, int leng){
  int rad = 5;
  if ( type == 0 ){
    pushStyle();
    fill(0,220,240);
    for (int i=0; i<leng; i++){ //
      ellipse( (position.x+(i*2*rad)),position.y+oscillator(0.5,15,i*((2*PI)/leng)),   (2*rad),(2*rad)); //*** ADD OSCILATOR TO Y COORD (oscilator to made in additional values)
    }
    popStyle();
  }
  if ( type == 1 ){
    //pass
  }
  if ( type == 2 ){
    //pass
  }
}
