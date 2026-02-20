if(!place_meeting(x, y, obj_ground)) {
	y += move_y;
	
	alarm[0] = 50;
}

if(move_y < max_speed_y) {
	move_y += 1;
}
