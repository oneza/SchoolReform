//УПРАВЛЕНИЕ ИГРОКОМ
key_right = keyboard_check(ord("D"));
key_space = keyboard_check_pressed(vk_space);
key_left  = keyboard_check(ord("A"));
key_up    = keyboard_check(ord("W"));
//key_shift = keyboard_check(vk_shift);
	 



if !boss_fight
{

	//ГОРИЗОНТАЛЬНЫЕ ДВИЖЕНИЯ	 
	var move_x = (key_right - key_left);



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
			if place_meeting (x, y + 1, obj_floor)
			{
				speed_h-=speed_h*0.4	
			}
			else
			{
				speed_h-=speed_h*0.02	
			}
		
		}
	}

	sliding = false
	//СКОЛЬЖЕНИЕ ПО СТЕНЕ
	if move_x != 0 
	{
		if place_meeting (x + sign(move_x), y, obj_floor)
	    {
			//if speed_v != 0
			//{
				sliding = true
			//}
			//self.sprite_index=spr_player_slide
			//obj_player.image_xscale = sign(move_x)
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

	standing = false	
	//ПАДЕНИЕ
	if !place_meeting (x, y + 1, obj_floor)
	    {
	        speed_v = speed_v + gravity_value ;
	    }
	else
	{
		standing = true	
	}
	
	//СКАТЫВАНИЕ (АХАХАХАХ КАК ЛУРКОПАБ) С ВРАГА
	if place_meeting (x, y + 1, obj_enemy_weak)
	    {
			nearest_enemy = instance_nearest(x, y, obj_enemy_weak)
			var dir = sign(nearest_enemy.x - x);
	        speed_h -= dir * 3;
	    }
	
	//ПРЫЖОК С ЗЕМЛИ И НЕ ТОЛЬКО
	if place_meeting (x, y + 1, obj_floor) || (abs(speed_h) > 0.5 && place_meeting (x - speed_h, y + 1, obj_floor))
	{
		//if (!in_combat) && (speed_v==0) &&(speed_h !=0) {self.sprite_index=spr_player_run}
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
	if place_meeting(x+speed_h, y, obj_enemy_weak) {
	    //while !place_meeting(x+sign(speed_h), y, obj_enemy_weak) {
	    //    x += sign(speed_h);
	    //}
	    speed_h = 0;
	}

	//ВЕРТИКАЛЬНАЯ КОЛЛИЗИЯ
	if place_meeting(x, y+speed_v, obj_floor) {
	    while !place_meeting(x, y+sign(speed_v), obj_floor) {
	        y += sign(speed_v);
	    }
		if speed_v > 15
		{
			audio_play_sound(eff_landing, 1, false)	
		}
	    speed_v = 0;
	}
	if place_meeting(x, y+speed_v, obj_enemy_weak) {
	    //while !place_meeting(x, y+sign(speed_v), obj_enemy_weak) {
	    //    y += sign(speed_v);
	    //}
	    speed_v = 0;
	}
	x += speed_h;
	y += speed_v;
}




//МНЕ ЛЕНЬ ДЕЛАТЬ ЕВЕНТ С АЛАРМОМ
if (alarm_wjumped == 0)
{
	wjumped = false
}
else
{
	alarm_wjumped -= 1
}


if (!in_combat && !boss_fight)
{
	
	if (speed_v > 0) {self.sprite_index=spr_player_fall}
	if (speed_v < 0) {self.sprite_index=spr_player_jump}
	if (sliding && !standing) {		
		self.sprite_index=spr_player_slide
		obj_player.image_xscale = sign(move_x)
	}
	if standing && (speed_v==0)
	{
		if (abs(speed_h) <= 0.7)  {self.sprite_index=spr_player_stand}	
		if (abs(speed_h) > 0.7) {self.sprite_index=spr_player_run}	
	}
}


if (speed_h > 0.5)
{
	obj_player.image_xscale=1
}
if (speed_h < -0.5)
{
	obj_player.image_xscale=-1
}





//Начало боя с obj_enemy_weak в зависмости от дистанции
if (instance_exists(obj_enemy_weak)) 
{ 
	nearest_enemy = instance_nearest(x, y, obj_enemy_weak)
	if (point_distance(x, y, nearest_enemy.x, nearest_enemy.y) < nearest_enemy.combat_start_range) && nearest_enemy.sprite_index != spr_explosion
	{
		var dir = sign(obj_enemy_weak.x - x)
		//obj_player.image_xscale=dir
		in_combat = true
	}
	else
	{
		in_combat = false	
	}
}



//Бой
if (in_combat) 
{
	qte_placing_x = x - 30 + (nearest_enemy.x - x) / 2
	if alarm[8] == 0.2 * room_speed
	{
		audio_play_sound(eff_punch, 1, false)
		damage = irandom_range(base_damage - 0.25* base_damage, base_damage + 0.25 * base_damage)
		var crit = false
		randomize()
		if irandom(99) < crit_chance
		{
			var crit = true
			damage = damage * crit_multiplier
		}
		var dir = sign(nearest_enemy.x - x);
		nearest_enemy.hsp += dir * 10
		nearest_enemy.en_health -= damage
		var damage_display = instance_create_layer(nearest_enemy.x, nearest_enemy.y - 20, "UI", obj_damage_text)
		damage_display.damage_dealer = 0
		damage_display.damage_value = damage
		damage_display.crit = crit
		nearest_enemy.sprite_index = spr_enemy_weak_pain
		nearest_enemy.can_change_sprite = false
	}

	if stage == 0
	{
		self.sprite_index = spr_player_fightpose
		if !qte_shown 
		{
			randomize()
			qte_to_show = irandom(3)
			switch (qte_to_show) {
				    case 0:
				        qte_to_show = obj_qte_up
				        break;
				    case 1:
				        qte_to_show = obj_qte_down
				        break;			
				    case 2:
				        qte_to_show = obj_qte_left
				        break;
				    case 3:
				        qte_to_show = obj_qte_right
				        break;	
			}
			instance_create_layer(qte_placing_x, y - 100, "UI", qte_to_show)	
			alarm[9] = react_time * room_speed
			qte_shown = true
		}
		stage = 1
	}
	if stage == 1
	{
		qte_shown = false
			switch (qte_to_show) {
			    case obj_qte_up:
					if keyboard_check_released(vk_up) 
					{
						instance_destroy(qte_to_show)
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
						instance_destroy(qte_to_show)
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
						instance_destroy(qte_to_show)
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
						instance_destroy(qte_to_show)
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
	}		
}
else
{
	scr_destroy_all_qte()
}

if alarm[8] == 0.1 * room_speed
{
	nearest_enemy.sprite_index = spr_enemy_weak_stand
	nearest_enemy.can_change_sprite = true
}
	
if(player_hp <= 0){
	showInv = false;
	room_goto(rm_death);
}/**/