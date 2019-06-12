if(block)
{
	hsp = 0;
	
	if(down)
	{
		state = states.CrouchBlock;
	}
	else
		state = states.Block;
}
else
{
	if(down)
		{
			state = states.Crouch;
			hsp = 0;
		}

	else if(hsp != 0)
	{
		if(!OnGround())	
			state = states.Jump; 
		else
			state = states.Walk;	
	}
	else
		state = states.Idle;
}