if other.lootable
{
	if scr_itempickup(3)
	{
		base_damage -= 10
		crit_chance += 50
		instance_destroy(other)	
}	
}
