/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04CC7E08
/// @DnDArgument : "code" "//УПРАВЛЕНИЕ ИГРОКОМ$(13_10)key_right = keyboard_check(ord("D"));$(13_10)key_space = keyboard_check_pressed(vk_space);$(13_10)key_left  = keyboard_check(ord("A"));$(13_10)key_up    = keyboard_check(ord("W"));$(13_10)//key_shift = keyboard_check(vk_shift);$(13_10)spd = 5; //+ key_shift*4;$(13_10)jmpspeed=11;$(13_10)wjmpspeed=10;$(13_10)$(13_10)//СМЕНА СПРАЙТА НА ПАДЕНИЕ$(13_10)if (vspeed>0.5)&&(!place_meeting(x, y, obj_floor)){$(13_10)	self.sprite_index=spr_player_fall;$(13_10)	}$(13_10)$(13_10)//self.sprite_index=sprite2;$(13_10)//уменьшение скорости прыжка от стены$(13_10)if (abs(wjump)>0){wjump-=sign(wjump)*0.2;}$(13_10)$(13_10)move_x = 0;$(13_10)move_y = 0;$(13_10)move_x = (key_right - key_left)*spd;$(13_10)$(13_10)//Инерция при остановке$(13_10)if (abs(hspeed)>0)&&(move_x==0){hspeed-=hspeed*0.4;}$(13_10)$(13_10)//Смена спрайта на СТОЙКУ НА МЕСТЕ$(13_10)if (move_x==0)&&(jump==1)&&(wjump==0){self.sprite_index=spr_player_stand}$(13_10)$(13_10)//ПРОВЕРКА КОЛЛИЗИЙ ПРИ ДВИЖЕНИИ ВБОК$(13_10)if place_meeting(x+move_x+wjump+hspeed, y-1, obj_floor){$(13_10)	repeat(abs(move_x+floor(wjump)+floor(hspeed)	)){$(13_10)		if(!place_meeting(x+sign(move_x)+sign(wjump)+sign(hspeed),y-1,obj_floor)){$(13_10)			//if (wjump>0){x+=sign(wjump)}$(13_10)			//else{x+=sign(move_x);}$(13_10)			x+=sign(move_x)+sign(wjump)+sign(hspeed);$(13_10)		}$(13_10)		else{break}$(13_10)	}$(13_10)	//СТАВИМ СПРАЙТ В СТОЙКУ НА МЕСТЕ ПРИ КОЛЛИЗИЯХ НА ЗЕМЛЕ$(13_10)	if(jump==1){$(13_10)		self.sprite_index=spr_player_stand$(13_10)		}$(13_10)	move_x=0;$(13_10)	hspeed=0;$(13_10)	wjump=0;$(13_10)	//СКОЛЬЖЕНИЕ ПО СТЕНЕ$(13_10)	if (vspeed>0){$(13_10)		vspeed=vspeed-vspeed/4;$(13_10)		//СМЕНА СПРАЙТАПРИ СКОЛЬЖЕНИИ ПО СТЕНЕ$(13_10)		if (vspeed>0.5)&&(key_left||key_right){$(13_10)			self.sprite_index=spr_player_slide;$(13_10)			}$(13_10)		}$(13_10)	//ПРЫЖОК ОТ СТЕНЫ$(13_10)	if key_space&&(self.sprite_index==spr_player_slide){$(13_10)		wjump=-wjmpspeed*(key_right - key_left);$(13_10)		obj_player.image_xscale=-sign(obj_player.image_xscale);$(13_10)		vspeed=-wjmpspeed;$(13_10)		self.sprite_index=spr_player_jump;$(13_10)		}$(13_10)	/*$(13_10)	//БЕГ ПО СТЕНЕ $(13_10)	if (key_up){$(13_10)			vspeed=-6;$(13_10)			}$(13_10)	*/$(13_10)}$(13_10)//if (abs(wjump)=0){x += move_x;}else{x+=wjump+move_x*0.2;}$(13_10)//Определение ходьбы , в прыжке от стены движение по кнопкам деактивируется$(13_10)if (abs(wjump)=0){$(13_10)	//x += move_x;$(13_10)	if (move_x!=0){$(13_10)		hspeed=move_x;$(13_10)		if (jump==1){$(13_10)			self.sprite_index=spr_player_run;$(13_10)			}$(13_10)		}$(13_10)}$(13_10)else{x+=wjump+move_x*0.2;}$(13_10)$(13_10)//ПРОВЕРКА КОЛЛИЗИЙ В ПАДЕНИИ И НА ЗЕМЛЕ$(13_10)//Увеличение скорости падения$(13_10)if(!place_meeting(x,y,obj_floor)){$(13_10)	if (vspeed<20){$(13_10)	vspeed+=0.5;$(13_10)	}$(13_10)	jump=0;$(13_10)	}$(13_10)//Проверка коллизий с полом$(13_10)if(place_meeting(x,y+vspeed,obj_floor)){$(13_10)	vspeed=0;$(13_10)	if(place_meeting(x,y+2,obj_floor)){$(13_10)	jump=1;$(13_10)	}$(13_10)	wjump=0;$(13_10)	}$(13_10)$(13_10)//ПРЫЖОК С ЗЕМЛИ$(13_10)if key_space&&jump{$(13_10)	vspeed=-jmpspeed;$(13_10)	jump=0;$(13_10)	self.sprite_index=spr_player_jump;$(13_10)	}$(13_10)"
//УПРАВЛЕНИЕ ИГРОКОМ
key_right = keyboard_check(ord("D"));
key_space = keyboard_check_pressed(vk_space);
key_left  = keyboard_check(ord("A"));
key_up    = keyboard_check(ord("W"));
//key_shift = keyboard_check(vk_shift);
spd = 5; //+ key_shift*4;
jmpspeed=11;
wjmpspeed=10;

//СМЕНА СПРАЙТА НА ПАДЕНИЕ
if (vspeed>0.5)&&(!place_meeting(x, y, obj_floor)){
	self.sprite_index=spr_player_fall;
	}

//self.sprite_index=sprite2;
//уменьшение скорости прыжка от стены
if (abs(wjump)>0){wjump-=sign(wjump)*0.2;}

move_x = 0;
move_y = 0;
move_x = (key_right - key_left)*spd;

//Инерция при остановке
if (abs(hspeed)>0)&&(move_x==0){hspeed-=hspeed*0.4;}

//Смена спрайта на СТОЙКУ НА МЕСТЕ
if (move_x==0)&&(jump==1)&&(wjump==0){self.sprite_index=spr_player_stand}

//ПРОВЕРКА КОЛЛИЗИЙ ПРИ ДВИЖЕНИИ ВБОК
if place_meeting(x+move_x+wjump+hspeed, y-1, obj_floor){
	repeat(abs(move_x+floor(wjump)+floor(hspeed)	)){
		if(!place_meeting(x+sign(move_x)+sign(wjump)+sign(hspeed),y-1,obj_floor)){
			//if (wjump>0){x+=sign(wjump)}
			//else{x+=sign(move_x);}
			x+=sign(move_x)+sign(wjump)+sign(hspeed);
		}
		else{break}
	}
	//СТАВИМ СПРАЙТ В СТОЙКУ НА МЕСТЕ ПРИ КОЛЛИЗИЯХ НА ЗЕМЛЕ
	if(jump==1){
		self.sprite_index=spr_player_stand
		}
	move_x=0;
	hspeed=0;
	wjump=0;
	//СКОЛЬЖЕНИЕ ПО СТЕНЕ
	if (vspeed>0){
		vspeed=vspeed-vspeed/4;
		//СМЕНА СПРАЙТАПРИ СКОЛЬЖЕНИИ ПО СТЕНЕ
		if (vspeed>0.5)&&(key_left||key_right){
			self.sprite_index=spr_player_slide;
			}
		}
	//ПРЫЖОК ОТ СТЕНЫ
	if key_space&&(self.sprite_index==spr_player_slide){
		wjump=-wjmpspeed*(key_right - key_left);
		obj_player.image_xscale=-sign(obj_player.image_xscale);
		vspeed=-wjmpspeed;
		self.sprite_index=spr_player_jump;
		}
	/*
	//БЕГ ПО СТЕНЕ 
	if (key_up){
			vspeed=-6;
			}
	*/
}
//if (abs(wjump)=0){x += move_x;}else{x+=wjump+move_x*0.2;}
//Определение ходьбы , в прыжке от стены движение по кнопкам деактивируется
if (abs(wjump)=0){
	//x += move_x;
	if (move_x!=0){
		hspeed=move_x;
		if (jump==1){
			self.sprite_index=spr_player_run;
			}
		}
}
else{x+=wjump+move_x*0.2;}

//ПРОВЕРКА КОЛЛИЗИЙ В ПАДЕНИИ И НА ЗЕМЛЕ
//Увеличение скорости падения
if(!place_meeting(x,y,obj_floor)){
	if (vspeed<20){
	vspeed+=0.5;
	}
	jump=0;
	}
//Проверка коллизий с полом
if(place_meeting(x,y+vspeed,obj_floor)){
	vspeed=0;
	if(place_meeting(x,y+2,obj_floor)){
	jump=1;
	}
	wjump=0;
	}

//ПРЫЖОК С ЗЕМЛИ
if key_space&&jump{
	vspeed=-jmpspeed;
	jump=0;
	self.sprite_index=spr_player_jump;
	}
/**/

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 57F114B2
/// @DnDArgument : "code" "if (!place_meeting(x,y,obj_enemy_weak)){$(13_10)	instance_destroy(obj_qte_up,true);$(13_10)	instance_destroy(obj_qte_down,true);$(13_10)}$(13_10)$(13_10)if (move_x!=0)&&(wjump==0){$(13_10)obj_player.image_xscale=sign(move_x);$(13_10)}$(13_10)$(13_10)"
if (!place_meeting(x,y,obj_enemy_weak)){
	instance_destroy(obj_qte_up,true);
	instance_destroy(obj_qte_down,true);
}

if (move_x!=0)&&(wjump==0){
obj_player.image_xscale=sign(move_x);
}