draw_self();
if (instance_exists(obj_player)) 
{ 
	var nearest_player = instance_nearest(x, y, obj_player)
	if nearest_player.is_challenging
	{
		otjatia_int = round(otjatia);
		draw_text(x + 0, y + -40,  + string(otjatia_int));
		draw_sprite(spr_qte_down, 0, nearest_player.x - 40, nearest_player.y - 50);
		draw_text(nearest_player.x - 12, nearest_player.y + 5 ,  + string(nearest_player.otjatia));
	
	}
}
draw_set_halign(fa_middle);
draw_set_valign(fa_top);
if defeated
{
	draw_text(x, y - 200, string("YOU WON "))
}
if won
{
	draw_text(x, y - 200, string("YOU LOOSE "))
}