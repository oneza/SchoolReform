/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19A520B9
/// @DnDArgument : "code" "en_health = 100$(13_10)en_x = x;$(13_10)en_y = y;$(13_10)state = 1//idle = 0 //patrol = 1 //chase = 2$(13_10)in_combat = false;$(13_10)attack_player = false$(13_10)combat_start_range = 43$(13_10)vsp = 0;$(13_10)hsp = 0;$(13_10)dir = -1;$(13_10)agro_range = 150;$(13_10)chase_speed = 3.5$(13_10)patrol_speed = 2.5$(13_10)patrol_range = 150$(13_10)//idle вражина с нулевой скоростью по дефолту$(13_10)randomize();$(13_10)patrol_random = floor(random_range(0, 1 + 1));$(13_10)patrol_direction = -1 + 2 * patrol_random"
en_health = 100
en_x = x;
en_y = y;
state = 1//idle = 0 //patrol = 1 //chase = 2
in_combat = false;
attack_player = false
combat_start_range = 43
vsp = 0;
hsp = 0;
dir = -1;
agro_range = 150;
chase_speed = 3.5
patrol_speed = 2.5
patrol_range = 150
//idle вражина с нулевой скоростью по дефолту
randomize();
patrol_random = floor(random_range(0, 1 + 1));
patrol_direction = -1 + 2 * patrol_random