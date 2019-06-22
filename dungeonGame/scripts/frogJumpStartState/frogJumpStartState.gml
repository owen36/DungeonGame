// inputs


//calculate movemnt
CalcEntityMovement();


//modify state
if(image_index >= image_number - sprite_get_speed(sprite_index) / room_speed)
{
	state = frogStates.JUMP;
	vsp = jumpSpeed;
}




//apply movement
Collision();



//animates
AnimFrog();
