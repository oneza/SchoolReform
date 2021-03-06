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
		if !(punched){
		self.image_xscale=sign(hsp);
		}
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
			audio_play_sound(eff_punch, 1, false)
			damage = irandom_range(base_damage - 0.25* base_damage, base_damage + 0.25 * base_damage)
			var crit = false
			randomize()
			if irandom(99) < crit_chance
			{
				var crit = true
				damage = damage * crit_multiplier
			}

			//obj_player.speed_h += 10 * dir
			obj_player.player_hp -= damage
			obj_player.sprite_index=spr_player_pain;
			var damage_display = instance_create_layer(obj_player.x, obj_player.y - 20, "UI", obj_damage_text)
			damage_display.damage_dealer = 1
			damage_display.damage_value = damage
			damage_display.crit = crit
		}
		if (alarm_for_attack == 1)
		{
			obj_player.sprite_index=spr_player_fightpose;
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

if punched{
	self.sprite_index=spr_enemy_weak_pain;
	punched--;
}

if(en_health <= 0)
{
	self.sprite_index=spr_enemy_weak_pain;
	obj_player.alarm[9] = -1
	self.image_xscale=sign(dir);
	state = 4
	hsp -= dir * 15
	if(place_meeting(round(x+hsp), round(y), obj_floor)){
		instance_create_layer(x, y, "Instances_active", obj_explosion)
		instance_destroy()
		//if !alarm_is_set
		//{
		//	alarm[0] = 24/15 * room_speed	
		//	alarm_is_set = true
		//}
		
	}
}