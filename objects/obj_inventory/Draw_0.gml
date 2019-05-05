/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7AF35737
/// @DnDArgument : "code" "if(showInv == true){$(13_10)	var x1, x2, y1, y2;$(13_10)	$(13_10)	x1 = obj_player_ui.ui_placement_x + 130;$(13_10)	x2 = obj_player_ui.ui_placement_x + 330;$(13_10)	y1 = obj_player_ui.ui_placement_y + 217;$(13_10)	y2 = obj_player_ui.ui_placement_y + 247;$(13_10)$(13_10)	$(13_10)	draw_set_color(c_black);$(13_10)	draw_set_alpha(0.8);$(13_10)	draw_rectangle(x1, y1, x2, y2, false);$(13_10)	draw_set_alpha(1);$(13_10)$(13_10)	for(i = 0; i < maxItems; i++){$(13_10)		draw_sprite(spr_border, 0, x1 + (i * 50), y1 );$(13_10)		if(global.inventory[i] != -1){$(13_10)			draw_sprite(spr_itemcommon, global.inventory[i], x1 + (i * 50) + 15, y1 + 5);$(13_10)		}$(13_10)	}$(13_10)}"
if(showInv == true){
	var x1, x2, y1, y2;
	
	x1 = obj_player_ui.ui_placement_x + 130;
	x2 = obj_player_ui.ui_placement_x + 330;
	y1 = obj_player_ui.ui_placement_y + 217;
	y2 = obj_player_ui.ui_placement_y + 247;

	
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(x1, y1, x2, y2, false);
	draw_set_alpha(1);

	for(i = 0; i < maxItems; i++){
		draw_sprite(spr_border, 0, x1 + (i * 50), y1 );
		if(global.inventory[i] != -1){
			draw_sprite(spr_itemcommon, global.inventory[i], x1 + (i * 50) + 15, y1 + 5);
		}
	}
}