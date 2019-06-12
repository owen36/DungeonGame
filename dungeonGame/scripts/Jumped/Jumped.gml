if(OnGround())
	numberJumps = initalJumps;
	
if(numberJumps > 0)
{
		state = states.Jump;
		vsp = jumpSpeed;
		numberJumps -=1;
		JumpDust();
}