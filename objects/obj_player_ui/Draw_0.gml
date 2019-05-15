if(instance_exists(obj_player))
{
	draw_set_font(font_UI);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	draw_text_transformed(ui_placement_x, ui_placement_y, "" + string(global.name), 0.4, 0.4, 0);

	draw_healthbar(ui_placement_x , ui_placement_y + 13, ui_placement_x + 00040, ui_placement_y + 20, obj_player.player_hp, $FF191919 & $FFFFFF, $FF0C71FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF191919>>24) != 0), (($FF00004C>>24) != 0));

	draw_text_transformed(ui_placement_x, ui_placement_y + 21, string("Base damage:") + string(obj_player.base_damage), 0.4, 0.4, 0);
	draw_text_transformed(ui_placement_x, ui_placement_y + 32, string("Crit chance:") + string(obj_player.crit_chance), 0.4, 0.4, 0);
}

//else
//{
//	if(!instance_exists(obj_firstboss))
//	{
//		instance_destroy();
//	}
//}
if(showInv == true && room != rm_death&& room != rm_start){
	var x1, x2, y1, y2;
	
	x1 = ui_placement_x + 130 + 100;
	x2 = ui_placement_x + 330 + 100;
	y1 = ui_placement_y + 217 + 100;
	y2 = ui_placement_y + 247 + 100;

	
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(x1, y1, x2, y2, false);
	draw_set_alpha(1);

	for(i = 0; i < maxItems; i++){
		draw_sprite(spr_border, 0, x1 + (i * 50), y1 );
		if(global.inventory[i] != -1){
			draw_sprite_ext(spr_itemcommon, global.inventory[i], x1 + (i * 50) + 15, y1 + 5, 0.66, 0.66, 0, c_white, 1);
		}
	}
}