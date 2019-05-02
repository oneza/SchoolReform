/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4059B972
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "en_health"
en_health = 100;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19A520B9
/// @DnDArgument : "code" "en_x = obj_enemy_weak.x;$(13_10)en_y = obj_enemy_weak.y;$(13_10)state = e_state.patrol;$(13_10)vsp = 0;$(13_10)hsp = 0;$(13_10)dir = -1$(13_10)//idle вражина с нулевой скоростью по дефолту"
en_x = obj_enemy_weak.x;
en_y = obj_enemy_weak.y;
state = e_state.patrol;
vsp = 0;
hsp = 0;
dir = -1
//idle вражина с нулевой скоростью по дефолту