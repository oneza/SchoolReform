//key_enter = keyboard_check_pressed(vk_enter);
key_down = keyboard_check_pressed(vk_down);

if (instance_exists(obj_player)) 
{ 
	var nearest_player = instance_nearest(x, y, obj_player)
	if (point_distance(x, y, nearest_player.x, nearest_player.y) < 150) && !nearest_player.is_challenging && !defeated && !won
	{
		if counter
		{
			counter = false
			try++	
		}
		otjatia = 0
		nearest_player.otjatia = 0
		nearest_player.sprite_index = spr_player_stand
		nearest_player.boss_fight = true
		sprite_index = spr_firstboss
		if !dialog_spawned
		{
			dialog_spawned	= true
			instance_create_layer(nearest_player.x, nearest_player.y, "Instances_active", obj_fbdialog)	
		}
		
	}
	if !nearest_player.is_challenging && start_fight
	{
		audio_pause_all()
		if try == 0
		{
			audio_play_sound(snd_firtstbossfight, 1, false)	
		}
		else
		{
			audio_resume_sound(snd_firtstbossfight)	
		}
		start_fight = false
		nearest_player.is_challenging = true
		nearest_player.sprite_index=spr_player_otjimania
		nearest_player.image_speed = 0
		sprite_index = spr_boss_otjimania
		//y-=90
		alarm[0] = timer * room_speed
	}
	if nearest_player.is_challenging
	{
		if key_down {
			nearest_player.otjatia++;
		}
		draw_sprite(spr_qte_down, 0, nearest_player.x, nearest_player.y);
		otjatia += 0.2;	
	}
	if nearest_player.boss_fight 
	{
		//view_enabled[0] = false
		//view_visible[1] = true
		//view_visible[0] = false
		var xx = nearest_player.x + (x - nearest_player.x) / 2
		var yy = nearest_player.y + (y - nearest_player.y) / 2
		var cam = camera_create_view(xx - 237.5, yy - 175, 475, 250, 0);
		view_set_camera(0, cam);
		//view_enabled[1] = true
		
	}
	else
	{
		view_set_camera(0, default_cam);
		//view_visible[0] = true
		//view_visible[1] = false
	}
	
	
}