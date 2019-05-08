switch(state){
	case 0: //Возвращение в состояние 1
	{
		in_combat = false
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
	}
	break;
	case 2: 
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
				in_combat = true
			}
			else 
			{
				in_combat = false
			}
		}

	}
	break;
	case 1:
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
	
}

if(place_meeting(round(x+hsp), round(y), obj_floor)){
	while(!place_meeting(round(x + sign(hsp)), round(y), obj_floor)){
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;


if(place_meeting(round(x), round(y + vsp), obj_floor)){
	while(!place_meeting(round(x), round(y + sign(vsp)), obj_floor)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

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

//СМЕНА СПРАЙТОВ НА СКОРУЮ НОГУ
if (!in_combat) 
{
	self.sprite_index=spr_enemy_weak_run
}
else
{
	if attack_player && (alarm[0] == -1)
	{
		self.sprite_index = spr_enemy_weak_punch
		alarm[0] = room_speed * 0.5
		
	}
	if !attack_player
	{
		self.sprite_index=spr_enemy_weak_stand
	}
}


if(en_health <= 0)
{
	instance_destroy();
}