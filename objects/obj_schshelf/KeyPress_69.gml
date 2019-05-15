if !opened && player_can_open
{
	opened = true
	if loot != 0
	{
		instance_create_layer(x - 8, y  - 45, "Instances_active", loot)
	}
	
}