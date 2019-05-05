/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 683AB2A2
/// @DnDArgument : "code" "//Items $(13_10)//red = 0$(13_10)//blue = 1$(13_10)//yellow = 2$(13_10)//green = 3$(13_10)globalvar showInv;$(13_10)globalvar maxItems;$(13_10)$(13_10)showInv = true;$(13_10)maxItems = 4;$(13_10)$(13_10)for(i = 0; i < maxItems; i++){$(13_10)	global.inventory[i] = -1;	$(13_10)}$(13_10)$(13_10)inv_placement_x = obj_player.x;$(13_10)inv_placement_y = obj_player.y +200;$(13_10)$(13_10)//global.inventory[2] = 3;"
//Items 
//red = 0
//blue = 1
//yellow = 2
//green = 3
globalvar showInv;
globalvar maxItems;

showInv = true;
maxItems = 4;

for(i = 0; i < maxItems; i++){
	global.inventory[i] = -1;	
}

inv_placement_x = obj_player.x;
inv_placement_y = obj_player.y +200;

//global.inventory[2] = 3;