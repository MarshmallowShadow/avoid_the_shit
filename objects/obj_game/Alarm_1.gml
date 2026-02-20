// Spawns Poop on top of Player to keep player moving
if(instance_number(obj_player) > 0) {
	instance_create_layer(obj_player.x, 0, "Instances", obj_poop);

	alarm[1] = random(100) + 30;	
}