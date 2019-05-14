
gravity_value = 1
speed_v=0;
speed_h=0;
jmpspeed=17;
wjmpspeed=10
spd = 7
wjumped = false
alarm_wjumped = 0
sliding = false
standing = false


//Бой (хуй с губой)
player_hp = 100
base_damage = 50
in_combat = false
stage = 0
qte_shown = false
react_time = 2
boss_fight = false



//Бафы
under_speed_buff = false
speed_buff_duration = 5
under_damage_buff = false
damage_buff_duration = 7

showInv = true;
for(i = 0; i < maxItems; i++){
	global.inventory[i] = -1;
}