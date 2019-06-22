if(hsp == 0)
	hspDecimal = 0;

if(vsp == 0)
	vspDecimal = 0;


hsp += hspDecimal;
vsp += vspDecimal

hspDecimal = hsp - (floor(abs(hsp)) * sign(hsp));
hsp -= hspDecimal;

vspDecimal = vsp - (floor(abs(vsp)) * sign(vsp));
vsp -= vspDecimal;

var side;

if(hsp > 0)
	side = bbox_right;
else
	side = bbox_left;

var t1 = tilemap_get_at_pixel(global.map, side + hsp, bbox_top);
var t2 = tilemap_get_at_pixel(global.map, side + hsp, bbox_bottom);

if (t1 != VOID and t1 != PLATFORM or 
	t2 != VOID and t2 != PLATFORM)
{
	//collision found
	if(hsp > 0)
	{
		x =	x - (x mod global.tileSize) + global.tileSize - 1 - (side - x);		
	}
	else
	{
		x =	x - (x mod global.tileSize) - (side - x);	
	}
	hsp = 0;
	
}


x+=hsp;



// vertical coll
var side;

if(vsp > 0)
	side = bbox_bottom;
else
	side = bbox_top;

var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + vsp);
var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + vsp);
var t3 = tilemap_get_at_pixel(global.map, bbox_left, bbox_bottom);
var t4 = tilemap_get_at_pixel(global.map, bbox_right, bbox_bottom);

if ((t1 != VOID and (((vsp > 0 or t1 != PLATFORM)) and t3 != PLATFORM) or (t1 == SOLID and t3 == PLATFORM)) or 
	(t2 != VOID and (((vsp > 0 or t2 != PLATFORM)) and t4 != PLATFORM) or (t2 == SOLID and t4 == PLATFORM)))
{
	//collision found
	if(vsp > 0)
	{
		y =	y - (y mod global.tileSize) + global.tileSize - 1 - (side - y);		
	}
	else
	{
		y =	y - (y mod global.tileSize) - (side - y);	
	}
	vsp = 0;
	
}


y+=vsp;