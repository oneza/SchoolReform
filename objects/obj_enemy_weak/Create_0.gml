en_health = 100
en_x = x;
en_y = y;
state = 1//back_patrol = 0 //patrol = 1 //chase = 2
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
drop = 0