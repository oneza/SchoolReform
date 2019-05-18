/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 626DB96A
/// @DnDArgument : "code" "key_down = keyboard_check_pressed(vk_down);$(13_10)$(13_10)if key_down {$(13_10)	otjatia++;$(13_10)}$(13_10)$(13_10)if(timer>0){$(13_10)	timer--;$(13_10)	}$(13_10)$(13_10)/*	$(13_10)if (!place_meeting(x,y-1,obj_floor)) {$(13_10)	vspeed=3;$(13_10)	}$(13_10)else{vspeed=0}$(13_10)/*$(13_10)if(timer<=0){$(13_10)	if (otjatia>obj_firstboss.otjatia){$(13_10)	draw_text(x,y,"YOU WON")$(13_10)	}$(13_10)	else{draw_text(x,y,"YOU LOST")}$(13_10)}$(13_10)*/$(13_10)"
key_down = keyboard_check_pressed(vk_down);

if key_down {
	otjatia++;
}

if(timer>0){
	timer--;
	}

/*	
if (!place_meeting(x,y-1,obj_floor)) {
	vspeed=3;
	}
else{vspeed=0}
/*
if(timer<=0){
	if (otjatia>obj_firstboss.otjatia){
	draw_text(x,y,"YOU WON")
	}
	else{draw_text(x,y,"YOU LOST")}
}
*/
/**/