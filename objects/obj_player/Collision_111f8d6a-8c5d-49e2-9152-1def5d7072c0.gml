if !immun
{
	audio_play_sound(eff_fallingonpikes, 1, false)
	immun = true
	alarm[7] = room_speed * 0.5
	player_hp -= 50
	speed_v = -jmpspeed * 0.8
}

