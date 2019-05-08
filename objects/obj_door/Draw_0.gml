draw_self()
if instance_exists(obj_player)
{
	if(abs(obj_player.x - x) <= 50 && abs(obj_player.y - y) <= 150 )
	{
		dir = sign(obj_player.x - x);
		draw_set_alpha(0.8);
		draw_set_color(c_white);
		draw_roundrect(x + dir * 30, y + 5, x + dir * 150, y + 35, false);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_black);
		draw_set_font(fn_tnr);
		if locked
		{
			draw_text(x + dir * 88 , y + 20, "GDE KLU4");
		}
		else
		{
			draw_text(x + dir * 88 , y + 20, "NAZMI E DEBIL");
		}
	}
}
