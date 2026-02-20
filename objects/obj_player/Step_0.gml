// Loop around
move_wrap(true, false, 0);

// Enable movement
move_and_collide(move_x, move_y, obj_ground);


// Movement Logic
dir_x = keyboard_check(vk_right) - keyboard_check(vk_left); // keyboard_check returns 1 or 0

if(dir_x != 0) {
	if(abs(move_x) < max_move_x) move_x += (dir_x * move_speed);
} else {
	if(move_x > 0) move_x -= move_speed;
	else if (move_x < 0) move_x += move_speed;
}


// Moving Sprite and Direction Logic
if(move_x != 0 ) {
	image_xscale = sign(move_x); // Flips Image
	sprite_index = spr_player_run // Sets sprite to run animation
} else {
	// If idle
	sprite_index = spr_player_idle // Sets sprite to idle animation
}



if (place_meeting(x, y+2, obj_ground)) {
	
	// Downward Slope Movement
	if (!place_meeting(x+move_x, y+2, obj_ground) && place_meeting(x+move_x, y+10, obj_ground)) {
		if(move_y < max_move_x) move_y += abs(move_x) + abs(move_speed);
		move_x = 0;
	}
	// Regular Slope Movement
	else {
		move_y = 0
	}
	
	// Jumping Logic
	if(keyboard_check(vk_space)) move_y =- jump_speed;
	
} else {
	sprite_index = spr_player_jump;
	if (move_y < max_move_y) move_y += 1; // Gravity
}
