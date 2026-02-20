points_text = "Score: " + string(points);
game_over_text = "you shat yourself\nFinal Score: " + string(points);

if(instance_number(obj_player) > 0) {
	draw_set_halign(fa_left);
	draw_text(10, 10, points_text);
} else {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width / 2, room_height / 2, game_over_text);
}

draw_set_color(c_black);

