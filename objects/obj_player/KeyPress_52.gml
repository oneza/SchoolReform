/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 224EF718
/// @DnDArgument : "code" "if(showInv == true){$(13_10)	if(global.inventory[3] == 0){$(13_10)		base_damage = base_damage * 2;$(13_10)		alarm[1] = room_speed * damage_buff_duration;$(13_10)		var ui_id = layer_get_id("UI");$(13_10)		instance_create_layer(0, 0, "UI", obj_damage_buff_display);$(13_10)		scr_itemdrop(0);$(13_10)	}$(13_10)	if(global.inventory[3] == 1){$(13_10)		spd = spd * 2;$(13_10)		alarm[0] = room_speed * speed_buff_duration;$(13_10)		var ui_id = layer_get_id("UI");$(13_10)		instance_create_layer(0, 0, "UI", obj_speed_buff_display);$(13_10)		scr_itemdrop(1);$(13_10)	}$(13_10)}"
if(showInv == true){
	if(global.inventory[3] == 0){
		base_damage = base_damage * 2;
		alarm[1] = room_speed * damage_buff_duration;
		var ui_id = layer_get_id("UI");
		instance_create_layer(0, 0, "UI", obj_damage_buff_display);
		scr_itemdrop(0);
	}
	if(global.inventory[3] == 1){
		spd = spd * 2;
		alarm[0] = room_speed * speed_buff_duration;
		var ui_id = layer_get_id("UI");
		instance_create_layer(0, 0, "UI", obj_speed_buff_display);
		scr_itemdrop(1);
	}
}