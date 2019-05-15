if other.lootable
{
	if scr_itempickup(4)
	{
		base_damage += 30
		crit_chance -= 20
		instance_destroy(other)	
	}	
}