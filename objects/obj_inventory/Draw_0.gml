

//if(showInv == true && room != rm_death&& room != rm_start){
//	var x1, x2, y1, y2;
	
//	x1 = obj_player_ui.ui_placement_x + 130 + 100;
//	x2 = obj_player_ui.ui_placement_x + 330 + 100;
//	y1 = obj_player_ui.ui_placement_y + 217 + 100;
//	y2 = obj_player_ui.ui_placement_y + 247 + 100;

	
//	draw_set_color(c_black);
//	draw_set_alpha(0.8);
//	draw_rectangle(x1, y1, x2, y2, false);
//	draw_set_alpha(1);

//	for(i = 0; i < maxItems; i++){
//		draw_sprite(spr_border, 0, x1 + (i * 50), y1 );
//		if(global.inventory[i] != -1){
//			draw_sprite_ext(spr_itemcommon, global.inventory[i], x1 + (i * 50) + 15, y1 + 5, 0.66, 0.66, 0, c_white, 1);
//		}
//	}
//}