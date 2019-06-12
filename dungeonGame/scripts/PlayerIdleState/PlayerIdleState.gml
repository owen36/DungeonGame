////get input
GetInput();

//// calculate movement
CalculateMovement();

// check state
if(hsp != 0)
	state = states.Walk;

if(attack)
{
	state = states.Attack;
	image_index = 0;
}

if(jump)
{
	Jumped();
}

if(block)
{
state = states.Block;
hsp = 0;	
}

if(down)
{
	state = states.Crouch;
	hsp = 0;	
}

//// apply movement
Collision();

//// animate
Anim();
