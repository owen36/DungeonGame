image_xscale = facingDir;
sprite_index = spriteArray[state];
//mask_index = maskArray[state];

switch (state)
{
	case frogStates.JUMP:
		if(image_index >= 2)
		{
			image_speed = 0;
			if(vsp < 0)
				image_index = 2;
			else
				image_index = 3;
		}

	break;	
}