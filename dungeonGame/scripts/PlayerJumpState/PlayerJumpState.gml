////get input
GetInput();

//// calculate movement
CalculateMovement();

// check state
if(OnGround())
{
	if(hsp != 0)
		state = states.Walk;
	else
		state = states.Idle;	
		
		
	if(vsp > 0)
	{
		var inst = instance_create_layer(x, y, "Dust_Layer", o_Player_Dust_Land);
		inst.image_xscale = facingDir;
	}
}
	
if(attack)
{
	state = states.Attack;
	image_index = 0;
}

if(vsp < 0 and !jumpHeld)
	vsp = max(vsp, jumpSpeed / jumpDampner);	

if(jump)
	Jumped();

//// apply movement
Collision();

//// animate
Anim();
