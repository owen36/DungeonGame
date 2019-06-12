////get input
GetInput();

//// calculate movement
CalculateMovement();

IsBlocking();

if(attack)
{
	state = states.Attack;
	image_index = 0;
}

if(jump)
{
	Jumped();
}

//// apply movement
Collision();

//// animate
Anim();
