////get input
GetInput();

//// calculate movement
vsp += global.grav;

//drag
hsp = lerp(hsp, 0, drag);

//stop
if(abs(hsp) <= 0.1)
	hsp = 0;


// check state
if(OnGround())
{
		if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed)
		{
			image_index = 0;
			image_speed = 0;
		}

}

var recoverTime = 0.4;

if(alarm[HURT] < hurtTime * recoverTime)
{
	if(OnGround())
		state = states.Idle;
	else
		state = states.Jump;
		
	image_speed = 1;	
}


//// apply movement
Collision();

//// animate
Anim();
