//y += 90
if (instance_exists(obj_player)) 
{ 
	audio_pause_all()
	audio_resume_sound(snd_gymambient)
	//sprite_index = spr_firstboss
	var nearest_player = instance_nearest(x, y, obj_player)
	nearest_player.is_challenging = false
	nearest_player.image_speed = 1
	nearest_player.sprite_index = spr_player_stand
	nearest_player.boss_fight = false
	counter = true
	dialog_spawned = false
	if nearest_player.otjatia > otjatia
	{
		defeated = true
		//instance_create_layer(nearest_player.x, nearest_player.y, "Instances_active", obj_key)	
	}
	else
	{
		obj_firstboss.sprite_index=spr_firstboss_hit;
		bosshit = 10;
		/*
		nearest_player.player_hp -= 50
		nearest_player.speed_h = -100
		nearest_player.speed_v = -50
		while !place_meeting(x+10,y,obj_floor){
			obj_player.sprite_index=spr_player_pain;*/
		//}
		//self.sprite_index=spr_firstboss;
		won = true
		alarm[1] = room_speed * 2}
	
}