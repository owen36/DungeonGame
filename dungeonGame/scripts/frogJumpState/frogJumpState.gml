// inputs


//calculate movemnt
CalcEntityMovement();

hsp += walkSpeed * facingDir;
//vsp += global.grav;

//limit speed
hsp = min(abs(hsp), maxHsp) * facingDir;


//modify state
if(OnGround())
{
	state = frogStates.JUMPLAND;
	hsp = 0;
	image_index = 0;
	image_speed = 1;
}


//apply movement
Collision();



//animates
AnimFrog();
