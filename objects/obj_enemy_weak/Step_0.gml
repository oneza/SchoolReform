/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3929ABD6
/// @DnDArgument : "code" "switch(state){$(13_10)	case e_state.idle: //описание афк чела, для которого есть гарвитация и он начинает чейзить при приближении игрока$(13_10)	{$(13_10)		hsp = 0;$(13_10)		vsp = min(7, vsp + 0.5);$(13_10)		if(distance_to_object(obj_player < 100)){$(13_10)			state = e_state.chase;$(13_10)		}$(13_10)	}$(13_10)	break;$(13_10)	case e_state.chase:$(13_10)	{$(13_10)		dir = sign(obj_player.x - x);$(13_10)		hsp = 4.5 * dir;$(13_10)		vsp = min(7, vsp + 0.5);$(13_10)		if(distance_to_object(obj_player >= 100)){$(13_10)			state = e_state.idle;$(13_10)		}$(13_10)	}$(13_10)	break;$(13_10)}$(13_10)$(13_10)if(place_meeting(round(x+hsp), round(y), obj_floor)){$(13_10)	while(!place_meeting(round(x + sign(hsp)), round(y), obj_floor)){$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)x += hsp;$(13_10)$(13_10)if(place_meeting(round(x), round(y + vsp), obj_floor)){$(13_10)	while(!place_meeting(round(x), round(y + sign(vsp)), obj_floor)){$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp;"
switch(state){
	case e_state.idle: //описание афк чела, для которого есть гарвитация и он начинает чейзить при приближении игрока
	{
		hsp = 0;
		vsp = min(7, vsp + 0.5);
		if(distance_to_object(obj_player < 100)){
			state = e_state.chase;
		}
	}
	break;
	case e_state.chase:
	{
		dir = sign(obj_player.x - x);
		hsp = 4.5 * dir;
		vsp = min(7, vsp + 0.5);
		if(distance_to_object(obj_player >= 100)){
			state = e_state.idle;
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