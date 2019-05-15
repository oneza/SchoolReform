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