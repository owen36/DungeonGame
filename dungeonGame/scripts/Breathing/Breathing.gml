if(breathTimer < 0)
	image_speed = 1;		

else
	breathTimer--;
	
	
// stop breathing
if(image_index >= image_number - image_speed)
	{
		breathTimer = breathTimerInitial;
		image_index = 0;
		image_speed = 0;
	}
