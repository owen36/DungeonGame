event_inherited();

hsp = 0;
maxHspInital = 2;
maxHsp = maxHspInital;

vsp = 0;
walkSpeed = 2;
jumpSpeed = -6;

hspDecimal = 0;
vspDecimal = 0;

facingDir = choose(-1,1,-1,1,-1,1,-1,1);

//breathing
breathTimerInitial = random_range(room_speed * 1.75, room_speed * 2.25);
breathTimer = breathTimerInitial;
image_speed = 0;

//Jump
jumpChance = 0.5;
//when to check for jump
jumpTimerInitial = irandom_range(room_speed, room_speed * 1.5);
jumpTimer = jumpTimerInitial;

//actions
canAttack = true;
attackDelay = room_speed;

//inhale
attack = false;
inhale = false;
inhaleTimer = room_speed * 0.3;


//states
enum frogStates 
{
	IDLE,
	JUMPSTART,
	JUMP,
	JUMPLAND,
	ATTACK
};

state = frogStates.IDLE;

stateArray[frogStates.IDLE]			= frogIdleState;
stateArray[frogStates.JUMPSTART]	= frogJumpStartState;
stateArray[frogStates.JUMP]			= frogJumpState;
stateArray[frogStates.JUMPLAND]		= frogJumpLandState;
stateArray[frogStates.ATTACK]		= frogAttackState;


spriteArray[frogStates.IDLE]		= s_frog_idle;
spriteArray[frogStates.JUMP]		= s_frog_jump;
spriteArray[frogStates.JUMPSTART]	= s_frog_jump_start;
spriteArray[frogStates.JUMPLAND]	= s_frog_jump_land;
spriteArray[frogStates.ATTACK]		= s_frog_attack;