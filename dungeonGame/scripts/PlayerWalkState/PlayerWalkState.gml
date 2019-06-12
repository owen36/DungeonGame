////get input
GetInput();

//// calculate movement
CalculateMovement();

// check state
if(hsp == 0)
	state = states.Idle;
	
var side = bbox_bottom;
var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + 1);
var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + 1);

if(t1 == VOID and t2 == VOID)
{
	state = states.Jump;
	numberJumps = initalJumps;
}
	
	
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
