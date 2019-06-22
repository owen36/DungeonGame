// inputs



//calculate movemnt
CalcEntityMovement();

//modify state
//attack warning 
if(image_index == 2 and !inhale)
{
	inhale = true;
	alarm[INHALE] = inhaleTimer;
	image_speed = 0;
}

if(attack)
{
	if(image_index >= 5 and image_index <= 6)
	{
		var inst = instance_create_layer(x, y, "Enemy", o_Frog_hitbox);	
		inst.image_xscale = facingDir;
	}
	
	depth = layer_get_depth(layer_get_id("Player")) - 1;

	if(image_index >= image_number - sprite_get_speed(sprite_index)/room_speed)
	{
		state = frogStates.IDLE;
		alarm[CAN_ATTACK] = attackDelay;
		depth = layer_get_depth(layer_get_id("Enemy"));
		inhale = false;
		attack = false;
	}
}
//apply movement
Collision();



//animates
AnimFrog();
