/// @description Insert description here
// You can write your code in this editor
	if(!hurt)
	{
		hurt = true;
			
		facingDir = sign(other.x - x);
			
		if(facingDir == 0)
		 facingDir = 1;
		 
		 other.facingDir = -facingDir;
				
		//knockback
		var knockbackDis = 5;
		hsp = -facingDir * knockbackDis;
						
		hp -= 1;	
		
		alarm[HURT] = hurtTime
		
		state = states.Hit;
		image_index = 0;
		
	}