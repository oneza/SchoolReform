/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04CC7E08
/// @DnDArgument : "code" "key_right = keyboard_check(ord("D"));$(13_10)key_space = keyboard_check_pressed(vk_space);$(13_10)key_left  = keyboard_check(ord("A"));$(13_10)//key_down = (keyboard_check(ord("S")) || keyboard_check(vk_down));$(13_10)spd = 4;$(13_10)$(13_10)//move_x = 0;$(13_10)move_x = (key_right - key_left)*spd;$(13_10)if (place_meeting(x+sign(move_x), y-10, obj_floor))$(13_10)   {$(13_10)	move_x=0;$(13_10)   } $(13_10)x += move_x;$(13_10)if (key_space)&&(jump)$(13_10)	{vspeed=-7;$(13_10)	y-=1;$(13_10)	}$(13_10)$(13_10)if (!place_meeting(x, y-1, obj_floor))$(13_10)   {$(13_10)	jump=0$(13_10)	vspeed += 0.5;$(13_10)   } $(13_10)if (vspeed>0){$(13_10)	if (place_meeting(x, y+1, obj_floor))$(13_10)   {$(13_10)	vspeed=0$(13_10)	//gravity = 0;$(13_10)	jump=1;$(13_10)   }$(13_10)}$(13_10)/*if place_meeting(x,y+3,obj_floor){$(13_10)	repeat(3){$(13_10)		if(!place_meeting(x,y+sign(vspeed),obj_floor)){$(13_10)			y+=sign(vspeed);$(13_10)		}$(13_10)	}$(13_10)	vspeed=0;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)/*$(13_10)}$(13_10)else{$(13_10)	while (gravity_value > 0){$(13_10)		if (!place_meeting(x,y+1+gravity_value, obj_floor)){$(13_10)			y += gravity_value$(13_10)			gravity_value = 0$(13_10)		}$(13_10)		gravity_value -= 1$(13_10)	}$(13_10)	vspeed = 0$(13_10)	gravity_value = 0$(13_10)	if (player_hp > 0){$(13_10)	if key_space{$(13_10)		gravity_value = -70$(13_10)	}$(13_10)	}$(13_10)}$(13_10)*/"
key_right = keyboard_check(ord("D"));
key_space = keyboard_check_pressed(vk_space);
key_left  = keyboard_check(ord("A"));
//key_down = (keyboard_check(ord("S")) || keyboard_check(vk_down));
spd = 4;

//move_x = 0;
move_x = (key_right - key_left)*spd;
if (place_meeting(x+sign(move_x), y-10, obj_floor))
   {
	move_x=0;
   } 
x += move_x;
if (key_space)&&(jump)
	{vspeed=-7;
	y-=1;
	}

if (!place_meeting(x, y-1, obj_floor))
   {
	jump=0
	vspeed += 0.5;
   } 
if (vspeed>0){
	if (place_meeting(x, y+1, obj_floor))
   {
	vspeed=0
	//gravity = 0;
	jump=1;
   }
}
/*if place_meeting(x,y+3,obj_floor){
	repeat(3){
		if(!place_meeting(x,y+sign(vspeed),obj_floor)){
			y+=sign(vspeed);
		}
	}
	vspeed=0;
}



/*
}
else{
	while (gravity_value > 0){
		if (!place_meeting(x,y+1+gravity_value, obj_floor)){
			y += gravity_value
			gravity_value = 0
		}
		gravity_value -= 1
	}
	vspeed = 0
	gravity_value = 0
	if (player_hp > 0){
	if key_space{
		gravity_value = -70
	}
	}
}
*//**/

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 40195CCE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_enemy_weak"
/// @DnDSaveInfo : "object" "d6f29912-5812-4ed3-ab3c-bc6850d70b3d"
var l40195CCE_0 = instance_place(x + 0, y + 0, obj_enemy_weak);
if ((l40195CCE_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49FC14B9
	/// @DnDParent : 40195CCE
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "key_right"
	key_right += 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AA1B3D4
	/// @DnDParent : 40195CCE
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "player_hp"
	player_hp += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 242DDCA1
/// @DnDArgument : "var" "player_hp"
/// @DnDArgument : "op" "3"
if(player_hp <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7F8F8574
	/// @DnDParent : 242DDCA1
	room_restart();
}