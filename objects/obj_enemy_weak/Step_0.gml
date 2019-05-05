/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3929ABD6
/// @DnDArgument : "code" "switch(state){$(13_10)	case e_state.idle: //описание афк чела, для которого есть гарвитация и он начинает чейзить при приближении игрока$(13_10)	{$(13_10)		hsp = 0;$(13_10)		vsp = min(7, vsp + 0.5);$(13_10)		if(distance_to_object(obj_player) < agro_range){$(13_10)			state = e_state.chase;$(13_10)		}$(13_10)	}$(13_10)	break;$(13_10)	case e_state.chase: $(13_10)	{$(13_10)		dir = sign(obj_player.x - x);$(13_10)		hsp = chase_speed * dir;$(13_10)		vsp = min(7, vsp + 0.5);$(13_10)		if(distance_to_object(obj_player) > agro_range){$(13_10)			if(obj_enemy_weak.x != en_x){$(13_10)				dir = sign(en_x - obj_enemy_weak.x);$(13_10)				if (abs(obj_enemy_weak.x - en_x) > patrol_speed) {$(13_10)					hsp = patrol_speed * dir;$(13_10)				}$(13_10)				else $(13_10)				{$(13_10)					hsp = 0$(13_10)					obj_enemy_weak.x = en_x$(13_10)					state = e_state.patrol$(13_10)				}$(13_10)$(13_10)			}$(13_10)		}$(13_10)		if (abs(obj_player.x-x) < 35){$(13_10)			hsp = 0; $(13_10)		}$(13_10)	}$(13_10)	break;$(13_10)	case e_state.patrol:$(13_10)	{$(13_10)		hsp = patrol_speed * dir;$(13_10)		vsp = min(7, vsp + 0.5);$(13_10)		if(round(obj_enemy_weak.x) <= round(en_x - 75)) {$(13_10)			dir = 1;$(13_10)			hsp = patrol_speed * dir;$(13_10)		}$(13_10)		if(round(obj_enemy_weak.x) >= round(en_x + 75)) {$(13_10)			dir = -1;$(13_10)			hsp = patrol_speed * dir;$(13_10)		}$(13_10)$(13_10)		if(distance_to_object(obj_player) < agro_range){$(13_10)			state = e_state.chase;$(13_10)		}$(13_10)	}$(13_10)	break;$(13_10)}$(13_10)$(13_10)if(place_meeting(round(x+hsp), round(y), obj_floor)){$(13_10)	while(!place_meeting(round(x + sign(hsp)), round(y), obj_floor)){$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)$(13_10)//ПОВОРОТ СПРАЙТА$(13_10)if (hsp==0){self.sprite_index=spr_enemy_weak_stand;}$(13_10)else{self.image_xscale=sign(hsp);}$(13_10)$(13_10)x += hsp;$(13_10)$(13_10)if(place_meeting(round(x), round(y + vsp), obj_floor)){$(13_10)	while(!place_meeting(round(x), round(y + sign(vsp)), obj_floor)){$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp;"
switch(state){
	case e_state.idle: //описание афк чела, для которого есть гарвитация и он начинает чейзить при приближении игрока
	{
		hsp = 0;
		vsp = min(7, vsp + 0.5);
		if(distance_to_object(obj_player) < agro_range){
			state = e_state.chase;
		}
	}
	break;
	case e_state.chase: 
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
					state = e_state.patrol
				}

			}
		}
		if (abs(obj_player.x-x) < 35){
			hsp = 0; 
		}
	}
	break;
	case e_state.patrol:
	{
		hsp = patrol_speed * dir;
		vsp = min(7, vsp + 0.5);
		if(round(obj_enemy_weak.x) <= round(en_x - 75)) {
			dir = 1;
			hsp = patrol_speed * dir;
		}
		if(round(obj_enemy_weak.x) >= round(en_x + 75)) {
			dir = -1;
			hsp = patrol_speed * dir;
		}

		if(distance_to_object(obj_player) < agro_range){
			state = e_state.chase;
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

//ПОВОРОТ СПРАЙТА
if (hsp==0){self.sprite_index=spr_enemy_weak_stand;}
else{self.image_xscale=sign(hsp);}

x += hsp;

if(place_meeting(round(x), round(y + vsp), obj_floor)){
	while(!place_meeting(round(x), round(y + sign(vsp)), obj_floor)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 605A0A8C
/// @DnDArgument : "code" "//СМЕНА СПРАЙТОВ НА СКОРУЮ РУКУ$(13_10)self.sprite_index=spr_enemy_weak_run;$(13_10)if (place_meeting(x+20,y,obj_player)||place_meeting(x-20,y,obj_player)){$(13_10)	self.sprite_index=spr_enemy_weak_stand;$(13_10)}"
//СМЕНА СПРАЙТОВ НА СКОРУЮ РУКУ
self.sprite_index=spr_enemy_weak_run;
if (place_meeting(x+20,y,obj_player)||place_meeting(x-20,y,obj_player)){
	self.sprite_index=spr_enemy_weak_stand;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 070C1528
/// @DnDArgument : "var" "en_health"
/// @DnDArgument : "op" "3"
if(en_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 185EF18E
	/// @DnDParent : 070C1528
	instance_destroy();
}