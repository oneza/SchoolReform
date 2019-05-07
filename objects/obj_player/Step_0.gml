//УПРАВЛЕНИЕ ИГРОКОМ
key_right = keyboard_check(ord("D"));
key_space = keyboard_check_pressed(vk_space);
key_left  = keyboard_check(ord("A"));
key_up    = keyboard_check(ord("W"));
//key_shift = keyboard_check(vk_shift);
	 
if (!in_combat)&&(speed_v==0)&&(speed_h==0) {self.sprite_index=spr_player_stand}
if (!in_combat)&&(speed_v > 0) {self.sprite_index=spr_player_fall}
if (!in_combat)&&(speed_v < 0) {self.sprite_index=spr_player_jump}
//ГОРИЗОНТАЛЬНЫЕ ДВИЖЕНИЯ	 
move_x = (key_right - key_left);

if (speed_h > 0.5)
{
	obj_player.image_xscale=1
}
if (speed_h < -0.5)
{
	obj_player.image_xscale=-1
}

if (move_x != 0) 
{
	if !wjumped 
	{
		speed_h += move_x * spd;
		speed_h = clamp(speed_h, -spd, spd);		
	}
}
else
{
	if abs(speed_h)>0
	{
		speed_h-=speed_h*0.4
	}
}


//СКОЛЬЖЕНИЕ ПО СТЕНЕ
if move_x != 0
{
	if place_meeting (x + sign(move_x), y, obj_floor)
    {
		self.sprite_index=spr_player_slide
		obj_player.image_xscale = sign(move_x)
		x -= sign(move_x)
		if speed_v > 0
		{
			speed_v -= speed_v/4
		}
		if key_space && !place_meeting (x, y + 1, obj_floor)
		{
			wjumped = true
			alarm_wjumped = room_speed * 0.5
			speed_v = -jmpspeed
			speed_h = wjmpspeed * -sign(move_x)
		}
    }	
}


//ПРЫЖОК С ЗЕМЛИ И ПАДЕНИЕ
if !place_meeting (x, y + 1, obj_floor)
    {
        speed_v = speed_v + gravity_value ;
    }
else
{
	if (!in_combat)&&(speed_v==0)&&(speed_h !=0) {self.sprite_index=spr_player_run}
	if key_space
	{
		speed_v = -jmpspeed 
	}   
}

//ГОРИЗОНТАЛЬНАЯ КОЛЛИЗИЯ
if place_meeting(x+speed_h, y, obj_floor) {
    while !place_meeting(x+sign(speed_h), y, obj_floor) {
        x += sign(speed_h);
    }
    speed_h = 0;
}
x += speed_h;
//ВЕРТИКАЛЬНАЯ КОЛЛИЗИЯ
if place_meeting(x, y+speed_v, obj_floor) {
    while !place_meeting(x, y+sign(speed_v), obj_floor) {
        y += sign(speed_v);
    }
    speed_v = 0;
}
y += speed_v;

//МНЕ ЛЕНЬ ДЕЛАТЬ ЕВЕНТ С АЛАРМОМ
if (alarm_wjumped == 0)
{
	wjumped = false
}
else
{
	alarm_wjumped -= 1
}

if (!in_combat)&&(speed_v==0)&&(abs(speed_h) <= 0.7) {self.sprite_index=spr_player_stand}


/////////////////////////////////////////////////////////////////////////////
////СМЕНА СПРАЙТА НА ПАДЕНИЕ
//if (vspeed>0.5)&&(!place_meeting(x, y, obj_floor)){
//	self.sprite_index=spr_player_fall;
//	}

////self.sprite_index=sprite2;
////уменьшение скорости прыжка от стены
//if (abs(wjump)>0){wjump-=sign(wjump)*0.2;}

//move_x = 0;
//move_y = 0;
//move_x = (key_right - key_left)*spd;

////Инерция при остановке
//if (abs(hspeed)>0)&&(move_x==0){hspeed-=hspeed*0.4;}

////Смена спрайта на СТОЙКУ НА МЕСТЕ

//if (!in_combat)&&(move_x==0)&&(jump==1)&&(wjump==0){self.sprite_index=spr_player_stand}

////ПРОВЕРКА КОЛЛИЗИЙ ПРИ ДВИЖЕНИИ ВБОК
//if place_meeting(x+move_x+wjump+hspeed, y-1, obj_floor){
//	repeat(abs(move_x+floor(wjump)+floor(hspeed)	)){
//		if(!place_meeting(x+sign(move_x)+sign(wjump)+sign(hspeed),y-1,obj_floor)){
//			//if (wjump>0){x+=sign(wjump)}
//			//else{x+=sign(move_x);}
//			x+=sign(move_x)+sign(wjump)+sign(hspeed);
//		}
//		else{break}
//	}
//	//СТАВИМ СПРАЙТ В СТОЙКУ НА МЕСТЕ ПРИ КОЛЛИЗИЯХ НА ЗЕМЛЕ
//	if(jump==1){
//		self.sprite_index=spr_player_stand
//		}
//	move_x=0;
//	hspeed=0;
//	wjump=0;
//	//СКОЛЬЖЕНИЕ ПО СТЕНЕ
//	if (vspeed>0){
//		vspeed=vspeed-vspeed/4;
//		//СМЕНА СПРАЙТАПРИ СКОЛЬЖЕНИИ ПО СТЕНЕ
//		if (vspeed>0.5)&&(key_left||key_right){
//			if (key_right) {
//				obj_player.image_xscale=1;
//				}
//			if (key_left){
//				obj_player.image_xscale=-1;
//				}
//			self.sprite_index=spr_player_slide;
			
//			}
//		}
//	//ПРЫЖОК ОТ СТЕНЫ
//	if key_space&&(self.sprite_index==spr_player_slide){
//		wjump=-wjmpspeed*(key_right - key_left);
//		obj_player.image_xscale=-sign(obj_player.image_xscale);
//		vspeed=-wjmpspeed;
//		self.sprite_index=spr_player_jump;
//		}
//	/*
//	//БЕГ ПО СТЕНЕ 
//	if (key_up){
//			vspeed=-6;
//			}
//	*/
//}
////if (abs(wjump)=0){x += move_x;}else{x+=wjump+move_x*0.2;}
////Определение ходьбы , в прыжке от стены движение по кнопкам деактивируется
//if (abs(wjump)=0){
//	//x += move_x;
//	if (move_x!=0){
//		hspeed=move_x;
//		if (jump==1){
//			self.sprite_index=spr_player_run;
//			}
//		}
//}
//else{x+=wjump+move_x*0.2;}

////ПРОВЕРКА КОЛЛИЗИЙ В ПАДЕНИИ И НА ЗЕМЛЕ
////Увеличение скорости падения
//if(!place_meeting(x,y,obj_floor)){
//	if (vspeed<20){
//	vspeed+=0.5;
//	}
//	jump=0;
//	}
////Проверка коллизий с полом
//if(place_meeting(x,y+vspeed,obj_floor)){
//	vspeed=0;
//	if(place_meeting(x,y+2,obj_floor)){
//	jump=1;
//	}
//	wjump=0;
//	}

////ПРЫЖОК С ЗЕМЛИ
//if key_space&&jump{
//	vspeed=-jmpspeed;
//	jump=0;
//	self.sprite_index=spr_player_jump;
//	}
///**/
/////////////////////////////////////////////////////////////////////////////

//Начало боя с obj_enemy_weak в зависмости от дистанции
if (instance_exists(obj_enemy_weak)) 
{ 
	nearest_enemy = instance_nearest(x, y, obj_enemy_weak)
	if (point_distance(x, y, nearest_enemy.x, nearest_enemy.y) < nearest_enemy.combat_start_range) && !in_combat
	{
		//event_perform(ev_collision, obj_enemy_weak)
		in_combat = true
		for (var i = 0; i < qte_in_sequence; ++i) {
		    randomize();
			qte_sequence[i] = irandom(3)
			switch (qte_sequence[i]) {
			    case 0:
			        qte_sequence[i] = obj_qte_up
			        break;
			    case 1:
			        qte_sequence[i] = obj_qte_down
			        break;			
			    case 2:
			        qte_sequence[i] = obj_qte_left
			        break;
			    case 3:
			        qte_sequence[i] = obj_qte_right
			        break;			
			}
		}
		showing_qte_number = 0
		react_qte_number = 0
		alarm[10] = 5
	}
}



//Бой
if (in_combat) 
{
	if !performing_attack 
	{
		self.sprite_index = spr_player_fightpose	
	}
	if (point_distance(x, y, nearest_enemy.x, nearest_enemy.y) >= nearest_enemy.combat_start_range)
	{
		for (var i = 0; i < qte_in_sequence; ++i) {
		   instance_destroy(qte_sequence[i])
		}
		in_combat = false
	}
	else 
	{
		dir_for_sprite = sign(nearest_enemy.x - x);
		obj_player.image_xscale = dir_for_sprite
		qte_placing_x = x - 30 + (nearest_enemy.x - x) / 2
		if (showing_qte_number == qte_in_sequence) 
		{
			if (react_qte_number != qte_in_sequence) 
			{
				switch (qte_sequence[react_qte_number]) {
			    case obj_qte_up:
					if keyboard_check_released(vk_up) 
					{
						react_qte_number++
						performing_attack = true
						self.sprite_index = spr_player_leghit
						alarm[8] = 0.5 * room_speed
					}
					if keyboard_check_released(vk_down) || keyboard_check_released(vk_left) ||keyboard_check_released(vk_right)
					{
						//nearest_enemy.attack_player = true
						alarm[9] = 1
					}
			        break;
			    case obj_qte_down:
					if keyboard_check_released(vk_down) 
					{
						react_qte_number++
						performing_attack = true
						self.sprite_index = spr_player_podsechka
						alarm[8] = 0.5 * room_speed
					}
					if keyboard_check_released(vk_up) || keyboard_check_released(vk_left) ||keyboard_check_released(vk_right)
					{
						//nearest_enemy.attack_player = true
						alarm[9] = 1
					}
			        break;
			    case obj_qte_left:
					if keyboard_check_released(vk_left) 
					{
						react_qte_number++
						performing_attack = true
						self.sprite_index = spr_player_punch_left
						alarm[8] = 0.5 * room_speed
					}
					if keyboard_check_released(vk_up) || keyboard_check_released(vk_down) ||keyboard_check_released(vk_right)
					{
						//nearest_enemy.attack_player = true
						alarm[9] = 1
					}
			        break;
			    case obj_qte_right:
					if keyboard_check_released(vk_right) 
					{
						react_qte_number++
						performing_attack = true
						self.sprite_index = spr_player_punch_right
						alarm[8] = 0.5 * room_speed
					}
					if keyboard_check_released(vk_up) || keyboard_check_released(vk_down) ||keyboard_check_released(vk_left)
					{
						//nearest_enemy.attack_player = true
						alarm[9] = 1
					}
			        break;
				}
			} else 
			{
				nearest_enemy.en_health -= base_damage
				alarm[9] = -1
				in_combat = false
			}
		}
	}
}
else
{
		alarm[9] = -1
		alarm[10] = -1
		alarm[11] = -1
}

//if (move_x!=0)&&(wjump==0){
//obj_player.image_xscale=sign(move_x);
//}

if(player_hp <= 0){
	showInv = false;
	room_goto(rm_death);
}/**/