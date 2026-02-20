// Gets random x value based on game screen width
random_spawn_x = random(room_width);

// Creates poop object.
instance_create_layer(random_spawn_x, 0, "Instances", obj_poop);

// If player still alive, resets this timer.
if(instance_number(obj_player) > 0) alarm[0] = spawn_timer;