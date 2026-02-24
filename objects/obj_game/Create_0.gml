global.difficulty = "easy"; // TODO: This shoule be moved to obj_init

points = 0;
spawn_timer = 0;

// Poop spawn frquency based on difficulty
switch global.difficulty {
	case "hard": spawn_timer = 10; break;
	case "medium": spawn_timer = 20; break;
	default: spawn_timer = 30; break;
}

alarm[0] = spawn_timer; // Timer for poop spawning randomly
alarm[1] = 50; // Timer for poop spawning on top of player