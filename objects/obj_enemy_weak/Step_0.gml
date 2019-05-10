switch(state){
	case 0: //Возвращение в начальную позицию
	{
		if(x != en_x)
		{
			dir = sign(en_x - x);
			if (abs(x - en_x) > patrol_speed) {
				hsp = patrol_speed * dir;
			}
			else 
			{
				hsp = 0
				x = en_x
				state = 1
			}
		}	
		if collision_line(x - agro_range/2, y, x + agro_range/2, y, obj_player, false, true)
		{
			state = 2;
		}
	}
	break;
	
	case 1://Патрулирует 
	{
		can_agro = true
		switch (patrol_direction) {
		    case 1:
		        if round(x) >= round(en_x + patrol_range) || place_meeting(round(x+hsp), round(y), obj_floor)
				{
					patrol_direction = -1;
				}
		        break;
			case -1:
				if(round(x) <= round(en_x - patrol_range)) || place_meeting(round(x+hsp), round(y), obj_floor)
				{
					patrol_direction = 1;
				}
		        break;
		}
		hsp = patrol_speed * patrol_direction;
		vsp = min(7, vsp + 0.5);
		if collision_ellipse(x - agro_range/2, y - agro_range/4, x + agro_range/2, y + agro_range/4, obj_player, false, true)
		{
			state = 2;
		}
	}
	break;
	
	case 2://Бежит к игроку
	{
		dir = sign(obj_player.x - x);
		hsp = chase_speed * dir;
		vsp = min(7, vsp + 0.5);
		if(distance_to_object(obj_player) > agro_range) || place_meeting(round(x + hsp), round(y), obj_floor) 
		{
			if place_meeting(round(x + hsp), round(y), obj_floor) 
			{
				can_agro = false	
			}
			state = 0
		}

		if instance_exists(obj_player) 
		{
			if point_distance(x, y, obj_player.x, obj_player.y) < combat_start_range 
			{
				hsp = 0; 
				state = 3
			}
		}

	}
	break;	
	case 3: //Бой
	{
		if point_distance(x, y, obj_player.x, obj_player.y) >= combat_start_range 
		{
			state = 2
		}
	}
	break;
}

if(place_meeting(round(x+hsp), round(y), obj_floor)){
	while(!place_meeting(round(x + sign(hsp)), round(y), obj_floor)){
		x += sign(hsp);
	}
	hsp = 0;
}
if(place_meeting(round(x+hsp), round(y), obj_player)){
	//while(!place_meeting(round(x + sign(hsp)), round(y), obj_player)){
	//	x += sign(hsp);
	//}
	hsp = 0;
}
x += hsp;


if(place_meeting(round(x), round(y + vsp), obj_floor)){
	while(!place_meeting(round(x), round(y + sign(vsp)), obj_floor)){
		y += sign(vsp);
	}
	vsp = 0;
}
if(place_meeting(round(x), round(y + vsp), obj_player)){
	//while(!place_meeting(round(x), round(y + sign(vsp)), obj_player)){
	//	y += sign(vsp);
	//}
	vsp = 0;
}
y += vsp;



//СМЕНА СПРАЙТОВ НА СКОРУЮ НОГУ
if state !=4
{
	//ПОВОРОТ СПРАЙТА
	if (hsp==0)
	{
		//self.sprite_index=spr_enemy_weak_stand;
	}
	else
	{
		//self.sprite_index=spr_enemy_weak_run
		self.image_xscale=sign(hsp);
	}
	if (state != 3) 
	{
		self.sprite_index=spr_enemy_weak_run
	}
	else
	{
		if (alarm_for_attack == room_speed * 0.5)
		{
			self.sprite_index=spr_enemy_weak_punch
		}
		if (alarm_for_attack == room_speed * 0.20)
		{
			//obj_player.speed_h += 10 * dir
			obj_player.player_hp -= 25
		}
	
	

		if (alarm_for_attack == 0)
		{
			self.sprite_index=spr_enemy_weak_stand
		}
		else
		{
			alarm_for_attack -= 1
		}
	}
}



if(en_health <= 0)
{
	obj_player.alarm[9] = -1
	self.image_xscale=sign(dir);
	state = 4
	hsp -= dir * 15
	if(place_meeting(round(x+hsp), round(y), obj_floor)){
		self.sprite_index = spr_explosion
		if !alarm_is_set
		{
			alarm[0] = 24/15 * room_speed	
			alarm_is_set = true
		}
		
	}
}