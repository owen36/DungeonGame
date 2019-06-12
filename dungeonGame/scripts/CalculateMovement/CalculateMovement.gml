hsp += (right - left) * walkSpeed;
vsp += global.grav;

//drag
hsp = lerp(hsp, 0, drag);

//stop
if(abs(hsp) <= 0.1)
	hsp = 0;

//face the right way
if(hsp != 0)
	facingDir = sign(hsp);

// limit speed
hsp = min(abs(hsp), maxHsp) * facingDir;