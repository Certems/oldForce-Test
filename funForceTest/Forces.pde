PVector ExtForce(){ //forces applied from environment
  //pass
  return new PVector(0,0); //***
}
PVector IntForce(float mass){ //forces caused by user and particle
  float weight = mass*g;
  return new PVector( 0 , weight ); //*** can add + for user input forces ***// 
}
PVector Rforce(PVector Fi, PVector Fe, PVector Mf){ //resultant force vector of the internal and external forces
  return new PVector( (Fi.x+Fe.x+Mf.x) , (Fi.y+Fe.y+Mf.y) );
}
float Rmag(PVector Force){ //magnitude of resultant force
  return sqrt( pow(Force.x,2) + pow(Force.y,2) );
}
PVector mouseForce(PVector Ppos){
  float forceCoeff = 0.4; //How strong will the mouse force be
  return new PVector( (mouseX-Ppos.x)*forceCoeff , (mouseY-Ppos.y)*forceCoeff );
}
