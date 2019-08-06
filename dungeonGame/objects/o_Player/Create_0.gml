/// @description Insert description here
// You can write your code in this editor

// speeds
hsp = 0;
vsp = 0;
maxHsp = 2;
walkSpeed = 1.5;

hspDecimal = 0;
vspDecimal = 0;

drag = 0.12;
jumpSpeed = -5;
jumpDampner = 2.5;

facingDir = 1;

numberJumps = 2;
initalJumps = 2;


o_Camera.follow = o_Player;


left = 0;
right = 0;
up = 0;
down = 0;
attack = 0;
jump = 0;
jumpHeld = 0;
block = 0;


//damage
flashCounter = 0
hurt = false;
hurtTime = room_speed;
hp = 5;

enum states
{
	Idle,
	Walk,
	Jump,
	Attack,
	Block,
	Crouch,
	CrouchBlock,
	Hit
		
};

state = states.Idle;

stateArray[states.Idle]			= PlayerIdleState;
stateArray[states.Walk]			= PlayerWalkState;
stateArray[states.Jump]			= PlayerJumpState;
stateArray[states.Attack]		= PlayerAttackState;
stateArray[states.Block]		= PlayerBlockState;
stateArray[states.Crouch]		= PlayerCrouchState;
stateArray[states.CrouchBlock]	= PlayerCrouchBlockState;
stateArray[states.Hit]			= PlayerHitState;

spriteArray[states.Idle]		= newIdle;
spriteArray[states.Walk]		= s_player_walk_strip6;
spriteArray[states.Jump]		= s_player_jump_strip2;
spriteArray[states.Attack]		= s_player_attack_strip5;
spriteArray[states.Block]		= s_player_block_strip1;
spriteArray[states.Crouch]		= s_player_crouch_strip4;
spriteArray[states.CrouchBlock] = s_player_crouch_block_strip1;
spriteArray[states.Hit]			= s_player_hurting;

maskArray[states.Idle]			= newIdle;
maskArray[states.Walk]			= s_player_idle_strip4;
maskArray[states.Jump]			= s_player_idle_strip4;
maskArray[states.Attack]		= s_player_idle_strip4;
maskArray[states.Block]			= s_player_idle_strip4;
maskArray[states.Crouch]		= s_player_crouch_strip4;
maskArray[states.CrouchBlock]	= s_player_crouch_strip4;
maskArray[states.Hit]			= s_player_idle_strip4;