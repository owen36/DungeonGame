////get input
GetInput();

//// calculate movement
CalculateMovement();

// check state
if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed)
{
	if(!OnGround())
		state = states.Jump;
	else if(hsp ==0)
		state = states.Idle;
	else
		state = states.Walk;	
}

if(jump)
{
	Jumped();
	state = states.Attack;
}

//create hitbox
if(image_index >= 1 and image_index<=3)
{
	var inst = instance_create_layer(x,y,"Player", o_Player_hitbox);
	inst.image_xscale = facingDir;
}


//// apply movement
Collision();

//// animate
Anim();
