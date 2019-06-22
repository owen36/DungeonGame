// inputs
Breathing();


//calculate movemnt
CalcEntityMovement();


//modify state
//attack
var detectPlayerDist = 40;
var playerAlert = false;
//player is within distance and we are facing him and can attack
if((distance_to_object(o_Player) < detectPlayerDist) and sign(o_Player.x - x) = facingDir)
{
	if(canAttack)
	{
		canAttack = false;
		state = frogStates.ATTACK;
		image_index = 0;
		image_speed = 1;
	}
	playerAlert = true;
}

if(jumpTimer < 0 and !playerAlert)
{
	jumpTimer = jumpTimerInitial;
	
	var _jump = random(1);
	if(_jump > jumpChance)
	{
		state = frogStates.JUMPSTART;
		image_index =0;
		image_speed = 1;
		maxHsp = maxHspInital;
		
		var turned = false;
		//check for solid tile
		var t1 = tilemap_get_at_pixel(global.map, x + sign(facingDir) * global.tileSize, bbox_bottom);
		
		if(t1 == SOLID)
		{
			facingDir *= -1;
			turned = true;
		}
		
		var t2 = tilemap_get_at_pixel(global.map, x + sign(facingDir) * global.tileSize, bbox_bottom + 1);
		
		if(t2 == VOID)
		{
			if(!turned)
			{
				facingDir *= -1;
			}
		}
		
		//look for voids mutiple Tiles ahead
		
		for(var i = 3; i > 0; i--)
		{
			var t3 = tilemap_get_at_pixel(global.map, x + sign(facingDir) * global.tileSize * i, bbox_bottom + 1);
			if(t3 == VOID)
			{
				//find furtest solid
				var tileStartX = (x + sign(facingDir) * global.tileSize * i) - 
								 (x + sign(facingDir) * global.tileSize * i) mod global.tileSize;
				
				//half the mask
				var halfSprite = (bbox_right + 1 - bbox_left)/2;
				
				if(facingDir)
				{
					var target = tileStartX - halfSprite;
				}
				else
				{
					var target = tileStartX + halfSprite + global.tileSize;
				}
				
				// adjust max hsp
				// 48 steps in jump state
				var stepsInAir = 48;
				maxHsp = abs(target - x) / stepsInAir;
				
			}
		}
		
		
	}	
}
else
	jumpTimer --;


//apply movement
Collision();



//animates
AnimFrog();
