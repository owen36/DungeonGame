/// @description Insert description here
// You can write your code in this editor
draw_text(x,y,hp);

//flash red
if(hurt)
{
	flashCounter ++;
	var flashOnTime = 8; // how long it is red for
	
	if(flashCounter < flashOnTime)
	{
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_maroon, image_alpha);
	}
	else
	{
		draw_self();
		if(flashCounter > flashOnTime * 2)
		{
				flashCounter = 0;
		}	
	}		
}
else
{
	draw_self();	
}