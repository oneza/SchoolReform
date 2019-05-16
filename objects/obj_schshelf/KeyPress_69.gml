if !opened && player_can_open
{
	audio_play_sound(eff_lockerhit, 0, false)
	opened = true
	if loot != 0
	{
		instance_create_layer(x - 8, y  - 45, "Instances_active", loot)
	}
	
}