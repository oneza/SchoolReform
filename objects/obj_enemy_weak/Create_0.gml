en_health = 100
en_x = x;
en_y = y;
state = 1//back_patrol = 0 //patrol = 1 //chase = 2
attack_player = false
combat_start_range = 43
alarm_for_attack = 0
//alarm_is_set = false
vsp = 0;
hsp = 0;
dir = -1;
agro_range = 300;
chase_speed = 3.5
patrol_speed = 2.5
patrol_range = 150
//idle вражина с нулевой скоростью по дефолту
base_damage = 25
crit_chance = 25
crit_multiplier = 2
randomize();
patrol_random = floor(random_range(0, 1 + 1));
patrol_direction = -1 + 2 * patrol_random
drop = 0

while place_meeting(round(x), round(y), obj_player)
{
	obj_player.x -= 35
	var dir = sign(obj_player.x - x)
}

obj_player.image_xscale = -dir
self.image_xscale = dir

