float g = 9.81; //gravitational acceleration ms^-2
float uppLim = 800*(0.7);
float lowLim = 800*(0.3);


float HorizonTheta( PVector velocity){ //Find the angle the particle makes to the horizontal (from front)
  float angH = atan( ( velocity.y ) / ( velocity.x ) ); //*** will need to change to a more stable value
  return angH; //*** Need to change to unit vectors of vel too
}

//-----------------------------------------------------------------------
float oscillator(float period, float amp, float startVal){ //time for one full sine cycle and % amplitude change
  float mov = sin( (2*PI)*( (frameCount)/(frameRate*period) ) + startVal); //***framerate caused problems (glitched after time)
  float ampMov = amp * mov; //the changed movement (to be more or less obvious)
  return ampMov;
}
//-----------------------------------------------------------------------
