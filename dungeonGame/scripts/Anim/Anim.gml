image_xscale = facingDir;
sprite_index = spriteArray[state];
mask_index = maskArray[state];

switch (state)
{
	case states.Jump:
		if(vsp < 0)
			image_index = 0;
		else
			image_index = 1;
	break;
	
	case states.Attack:
		if(!OnGround())
			sprite_index = s_player_air_attack_strip5;		
		else if (hsp != 0)	
		sprite_index = s_player_attack_walk_strip5;
		else
		sprite_index = s_player_attack_strip5;
	break;
	
}