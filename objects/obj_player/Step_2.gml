if sprite_index == spr_player_run && !audio_is_playing(eff_walking1) && !audio_is_playing(eff_walking2)
{
	var image_index_ = floor(image_index)
	if image_index_ == 0 || image_index_ == 5
	{
		if random_walking_sound
		{
			audio_play_sound(eff_walking1, 1, false)
			random_walking_sound = !random_walking_sound	
		}
		else
		{
			audio_play_sound(eff_walking2, 2, false)
			random_walking_sound = !random_walking_sound	
		}
			
	}
}
