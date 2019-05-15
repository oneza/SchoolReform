if(showInv == true){
	switch (global.inventory[argument0]) {
	    case 0:
			if alarm[1] == -1
			{
				base_damage = base_damage * 2;
				alarm[1] = room_speed * damage_buff_duration;
				instance_create_layer(0, 0, "UI", obj_damage_buff_display);
				global.inventory[argument0] = -1
			}
	        break;
	    case 1:
	        if alarm[0] == -1
			{
				spd = spd * 2
				alarm[0] = room_speed * speed_buff_duration
				instance_create_layer(0, 0, "UI", obj_speed_buff_display);
				global.inventory[argument0] = -1
			}
	        break;
	    case 2:
	        player_hp = 100
			global.inventory[argument0] = -1
	        break;
	    case 3:
	        base_damage += 10
			crit_chance -= 50
			scr_placeitem(argument0)
			global.inventory[argument0] = -1
	        break;
	    case 4:
			base_damage -= 30
			crit_chance += 20
			scr_placeitem(argument0)
			global.inventory[argument0] = -1
			break;
	    case 5:
			scr_placeitem(argument0)
			global.inventory[argument0] = -1
			break;
		default:
	        // Добавить звук закрытой двери из второй халфы
	        break;
	}


}

//return(0);