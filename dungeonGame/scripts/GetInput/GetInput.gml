left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(vk_shift);
attack = mouse_check_button(mb_left);
jump = keyboard_check_pressed(vk_space);
jumpHeld = keyboard_check(vk_space);
block = mouse_check_button(mb_right);

//controller
var _dev = 0
if gamepad_is_connected(_dev)
{
	var _deadzone = 0.3;
	left = gamepad_axis_value(_dev, gp_axislh) < -_deadzone or left;
	right = gamepad_axis_value(_dev, gp_axislh)> _deadzone or right;
	up = gamepad_axis_value(_dev, gp_axislv) <-_deadzone or up;
	down = gamepad_axis_value(_dev, gp_axislv)> _deadzone or down;
	
	attack = gamepad_button_check_pressed(_dev, gp_face3) or attack;
	jump = gamepad_button_check_pressed(_dev, gp_face1) or jump;
	jumpHeld = gamepad_button_check(_dev, gp_face1) or jumpHeld;
	block = gamepad_button_check(_dev, gp_shoulderrb) or block;
	
}
