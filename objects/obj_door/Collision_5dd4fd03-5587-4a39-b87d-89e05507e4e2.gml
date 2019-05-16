if(showInv == true){
	for(i = 0; i < maxItems; i++){
		if(global.inventory[i] == 5)
		{
			if locked
			{
				locked = false
				scr_itemdrop(5)
			}

		}
	}

}

if keyboard_check(ord("E")) && !locked
{
	global.player_hp = obj_player.player_hp
	global.base_damage = obj_player.base_damage
	global.crit_chance = obj_player.crit_chance
	room_goto(destination);
}