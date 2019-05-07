switch(state){
	case 0: //описание афк чела, для которого есть гарвитация и он начинает чейзить при приближении игрока
	{
		hsp = 0;
		vsp = min(7, vsp + 0.5);
		if(distance_to_object(obj_player) < agro_range){
			state = 2;
		}
	}
	break;
	case 2: 
	{
		dir = sign(obj_player.x - x);
		hsp = chase_speed * dir;
		vsp = min(7, vsp + 0.5);
		if(distance_to_object(obj_player) > agro_range){
			if(obj_enemy_weak.x != en_x){
				dir = sign(en_x - obj_enemy_weak.x);
				if (abs(obj_enemy_weak.x - en_x) > patrol_speed) {
					hsp = patrol_speed * dir;
				}
				else 
				{
					hsp = 0
					obj_enemy_weak.x = en_x
					state = 1
				}

			}
		}
		//var collision_with_player = collision_circle(x, y, combat_start_range, obj_player, true)
		if collision_circle(x, y, combat_start_range, obj_player, false, true)
		{
			hsp = 0; 
			in_combat = true
		}
		else 
		{
			in_combat = false
		}
	}
	break;
	case 1:
	{
		hsp = patrol_speed * dir;
		vsp = min(7, vsp + 0.5);
		if(round(obj_enemy_weak.x) <= round(en_x - 75)) {
			dir = 1;
			hsp = patrol_speed * dir;
		}
		if(round(obj_enemy_weak.x) >= round(en_x + 75))
		{
			dir = -1;
			hsp = patrol_speed * dir;
		}

		if(distance_to_object(obj_player) < agro_range){
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

//СМЕНА СПРАЙТОВ НА СКОРУЮ РУКУ
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