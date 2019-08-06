/// @description Insert description here
// You can write your code in this editor
var h = camera_get_view_height(view_camera[0]);
var w = camera_get_view_width(view_camera[0]);

camera = camera_create_view(0,0, w,h,0,-1,-1,400,400);

follow =noone;
moveToX = x;
moveToY = y;

cameraPanSpeedInital = 0.15;
cameraPanSpeed = 1;

alarm[CAMERA_RESET] = 3;

room_goto_next();
