/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49ABFBA4
/// @DnDArgument : "code" "spd = spd * 2$(13_10)alarm[0] = room_speed * speed_buff_duration$(13_10)var ui_id = layer_get_id("UI");$(13_10)$(13_10)instance_create_layer(0, 0, "UI", obj_speed_buff_display)"
spd = spd * 2
alarm[0] = room_speed * speed_buff_duration
var ui_id = layer_get_id("UI");

instance_create_layer(0, 0, "UI", obj_speed_buff_display)