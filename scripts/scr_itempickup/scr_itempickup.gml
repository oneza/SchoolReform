/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 06DA497F
/// @DnDArgument : "code" "for(i = 0; i < maxItems; i++){$(13_10)	if(global.inventory[i] == -1){$(13_10)		global.inventory[i] = argument0;$(13_10)		audio_play_sound(eff_itempickup, 0, false)$(13_10)		return(1);$(13_10)	}$(13_10)	$(13_10)}$(13_10)return(0);"
for(i = 0; i < maxItems; i++){
	if(global.inventory[i] == -1){
		global.inventory[i] = argument0;
		audio_play_sound(eff_itempickup, 0, false)
		return(1);
	}
	
}
return(0);