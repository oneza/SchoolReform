/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 36D3531D
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "player_hp"
player_hp = 100;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71DED717
/// @DnDArgument : "code" "vspeed=0;$(13_10)//hspeed=0;$(13_10)wjump=0$(13_10)move_x=0;$(13_10)inert=0;$(13_10)jump=1;$(13_10)spd = 7; //+ key_shift*4;$(13_10)jmpspeed=11;$(13_10)wjmpspeed=10;$(13_10)base_damage = 50$(13_10)$(13_10)//Бафы$(13_10)under_speed_buff = false$(13_10)speed_buff_duration = 5$(13_10)under_damage_buff = false$(13_10)damage_buff_duration = 7"
vspeed=0;
//hspeed=0;
wjump=0
move_x=0;
inert=0;
jump=1;
spd = 7; //+ key_shift*4;
jmpspeed=11;
wjmpspeed=10;
base_damage = 50

//Бафы
under_speed_buff = false
speed_buff_duration = 5
under_damage_buff = false
damage_buff_duration = 7