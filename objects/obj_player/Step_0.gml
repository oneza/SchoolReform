/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04CC7E08
/// @DnDArgument : "code" "//УПРАВЛЕНИЕ ИГРОеКОМ$(13_10)key_right = keyboard_check(ord("D"));$(13_10)key_space = keyboard_check_pressed(vk_space);$(13_10)key_left  = keyboard_check(ord("A"));$(13_10)key_up    = keyboard_check(ord("W"));$(13_10)spd = 5;$(13_10)jmpspeed=11;$(13_10)wjmpspeed=10;$(13_10)$(13_10)self.sprite_index=sprite2;$(13_10)if (abs(wjump)>0){wjump-=sign(wjump)*0.2;}$(13_10)move_x = 0;$(13_10)move_y = 0;$(13_10)move_x = (key_right - key_left)*spd;$(13_10)$(13_10)if(key_right)&&(inert<=0){inert=1;}$(13_10)if(key_left)&&(inert>=0){inert=-1;}$(13_10)$(13_10)//ПРОВЕРКА КОЛЛИЗИЙ ПРИ ДВИЖЕНИИ ВБОК$(13_10)if place_meeting(x+move_x+wjump, y-1, obj_floor){$(13_10)	repeat(abs(move_x+floor(wjump))){$(13_10)		if(!place_meeting(x+sign(move_x)+sign(wjump),y-1,obj_floor)){$(13_10)			//if (wjump>0){x+=sign(wjump)}$(13_10)			//else{x+=sign(move_x);}$(13_10)			x+=sign(move_x)+sign(wjump);$(13_10)		}$(13_10)		else{break}$(13_10)	}$(13_10)	move_x=0;$(13_10)	wjump=0;$(13_10)	//ЗАМЕДЛЕНИЕ О СТЕНУ ПРИ ПАДЕНИИ$(13_10)	if (vspeed>0){$(13_10)		vspeed=vspeed-vspeed/3;$(13_10)		}$(13_10)	//ПРЫЖОК ОТ СТЕНЫ$(13_10)	if key_space{$(13_10)		wjump=-wjmpspeed*(key_right - key_left);$(13_10)		vspeed=-wjmpspeed;$(13_10)		}$(13_10)	$(13_10)	//БЕГ ПО СТЕНЕ $(13_10)	if (key_up){$(13_10)			vspeed=-6;$(13_10)			}$(13_10)	$(13_10)}$(13_10)//if (abs(wjump)=0){x += move_x;}else{x+=wjump+move_x*0.2;}$(13_10)if (abs(wjump)=0){$(13_10)	x += move_x;$(13_10)	//inert=sign(move_x)*spd;$(13_10)}$(13_10)else{x+=wjump+move_x*0.2;}$(13_10)$(13_10)$(13_10)//ПРОВЕРКА КОЛЛИЗИЙ В ПАДЕНИИ И НА ЗЕМЛЕ$(13_10)if(!place_meeting(x,y,obj_floor)){$(13_10)	vspeed+=0.5;$(13_10)	//jump=0;$(13_10)	}$(13_10)if(place_meeting(x,y+vspeed,obj_floor)){$(13_10)	vspeed=floor(vspeed*0.15);$(13_10)	if(place_meeting(x,y+2,obj_floor)){$(13_10)	jump=1;$(13_10)	}$(13_10)	wjump=0;$(13_10)	}$(13_10)if(place_meeting(x,y-1,obj_floor)){$(13_10)	y+=2;$(13_10)	}$(13_10)//ПРЫЖОК С ЗЕМЛИ$(13_10)if key_space&&jump {$(13_10)	vspeed=-jmpspeed;$(13_10)	jump=0;$(13_10)	}$(13_10)	$(13_10)$(13_10)$(13_10)"
//УПРАВЛЕНИЕ ИГРОеКОМ
key_right = keyboard_check(ord("D"));
key_space = keyboard_check_pressed(vk_space);
key_left  = keyboard_check(ord("A"));
key_up    = keyboard_check(ord("W"));
spd = 5;
jmpspeed=11;
wjmpspeed=10;

self.sprite_index=sprite2;
if (abs(wjump)>0){wjump-=sign(wjump)*0.2;}
move_x = 0;
move_y = 0;
move_x = (key_right - key_left)*spd;

if(key_right)&&(inert<=0){inert=1;}
if(key_left)&&(inert>=0){inert=-1;}

//ПРОВЕРКА КОЛЛИЗИЙ ПРИ ДВИЖЕНИИ ВБОК
if place_meeting(x+move_x+wjump, y-1, obj_floor){
	repeat(abs(move_x+floor(wjump))){
		if(!place_meeting(x+sign(move_x)+sign(wjump),y-1,obj_floor)){
			//if (wjump>0){x+=sign(wjump)}
			//else{x+=sign(move_x);}
			x+=sign(move_x)+sign(wjump);
		}
		else{break}
	}
	move_x=0;
	wjump=0;
	//ЗАМЕДЛЕНИЕ О СТЕНУ ПРИ ПАДЕНИИ
	if (vspeed>0){
		vspeed=vspeed-vspeed/3;
		}
	//ПРЫЖОК ОТ СТЕНЫ
	if key_space{
		wjump=-wjmpspeed*(key_right - key_left);
		vspeed=-wjmpspeed;
		}
	
	//БЕГ ПО СТЕНЕ 
	if (key_up){
			vspeed=-6;
			}
	
}
//if (abs(wjump)=0){x += move_x;}else{x+=wjump+move_x*0.2;}
if (abs(wjump)=0){
	x += move_x;
	//inert=sign(move_x)*spd;
}
else{x+=wjump+move_x*0.2;}


//ПРОВЕРКА КОЛЛИЗИЙ В ПАДЕНИИ И НА ЗЕМЛЕ
if(!place_meeting(x,y,obj_floor)){
	vspeed+=0.5;
	//jump=0;
	}
if(place_meeting(x,y+vspeed,obj_floor)){
	vspeed=floor(vspeed*0.15);
	if(place_meeting(x,y+2,obj_floor)){
	jump=1;
	}
	wjump=0;
	}
if(place_meeting(x,y-1,obj_floor)){
	y+=2;
	}
//ПРЫЖОК С ЗЕМЛИ
if key_space&&jump {
	vspeed=-jmpspeed;
	jump=0;
	}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 57F114B2
/// @DnDArgument : "code" "if (!place_meeting(x,y,obj_enemy_weak)){$(13_10)	instance_destroy(obj_qte_up,true);$(13_10)	instance_destroy(obj_qte_down,true);$(13_10)}$(13_10)$(13_10)"
if (!place_meeting(x,y,obj_enemy_weak)){
	instance_destroy(obj_qte_up,true);
	instance_destroy(obj_qte_down,true);
}