if (instance_exists(obj_player)) 
{ 
	nearest_player = instance_nearest(x, y, obj_player)
	if (point_distance(x, y, nearest_player.x, nearest_player.y) < 150)
	{
		if !nearest_player.boss_fight
		{
			nearest_player.sprite_index=spr_player_otjimania
			nearest_player.image_speed = 0
		}
		nearest_player.boss_fight = true
	}
	else
	{
		nearest_player.boss_fight = false	
	}
}

if (self.sprite_index==spr_boss_otjimania)&&(timer<=0){
	timer=2;
	otjatia++;
	}
timer--;