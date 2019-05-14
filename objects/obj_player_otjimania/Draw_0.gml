draw_self();

draw_sprite(spr_qte_down, 0, x + -50, y + -100);

draw_set_font(font0);

draw_text(x + -20, y + -40, string("") + string(otjatia));

if(timer <= 0)
{
	if(otjatia > obj_firstboss.otjatia)
	{
		draw_text(x + -50, y + -60, string("YOU WON ") + "");
	
		room_goto(rm_start);
	}

	else
	{
		draw_text(x + -50, y + -60, string("YOU LOST ") + "");
	
		obj_firstboss.sprite_index=spr_firstboss;
		obj_firstboss.otjatia=0;
		obj_firstboss.y+=80
		instance_activate_object(obj_player);
		obj_player.x-=20
	
		instance_destroy();
	}
}