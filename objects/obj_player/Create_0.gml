
gravity_value = 1
speed_v=0;
speed_h=0;
jmpspeed=17;
wjmpspeed=10
spd = 7
wjumped = false
alarm_wjumped = 0
sliding = false

//wjump=0
//move_x=0;
//inert=0;
//jump=1;
//spd = 7; //+ key_shift*4;
//jmpspeed=20;
//wjmpspeed=10;


//Бой (хуй с губой)
player_hp = 100
base_damage = 50
in_combat = false
qte_in_sequence = 4
qte_sequence_time_shown = 0.5
time_for_react = 4
react_qte_number = 0
performing_attack = false

//Бафы
under_speed_buff = false
speed_buff_duration = 5
under_damage_buff = false
damage_buff_duration = 7

showInv = true;
for(i = 0; i < maxItems; i++){
	global.inventory[i] = -1;
}