////get input
GetInput();

//// calculate movement
CalculateMovement();
	
IsBlocking();

if(jump)
{
	Jumped();
}

if(attack)
{
	state = states.Attack;
	image_index = 0;
}


//// apply movement
Collision();

//// animate
Anim();
