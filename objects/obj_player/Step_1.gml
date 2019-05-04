	if !collision_line(x - 50, y, x + 50, y, obj_enemy_weak, false, true) 
	{
		alarm[9] = -1
		in_combat = false
	}