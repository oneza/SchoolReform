draw_sprite_ext(spr_qte_e, 0, x - 15, y - 35, 0.4, 0.4, 0, c_white, 1)
draw_set_font(fn_tnr);
draw_set_color(c_white);
//if(abs(obj_player.x - obj_firstboss.x) <= 300 && abs(obj_player.y - obj_firstboss.y) <= 50){
switch (obj_firstboss.try)
{
	case 0:
	{
		switch(dialog){
			case 0:
				dir = sign(obj_player.x - obj_firstboss.x);
				draw_set_color(c_white);
				draw_roundrect(boss_x - dir * 25 , obj_player.y-30, boss_x - dir * 150, obj_player.y,false);
				draw_set_color(c_black);
				//draw_roundrect(670, 450, 730, 795, true);
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
				draw_text_ext_transformed(boss_x - dir * 30, 
										  obj_player.y-28, 
										  "Hey buddy, I think you've got the wrong door, the leather club's two blocks down.", 
										  15,
										  200,
										  0.6,
										  0.6,
										  0
										  );
				//if(keyboard_key_press(vk_enter)){
					//dialog += 1;
					break;
				//}
			
			case 1:
				dir = sign(obj_player.x - obj_firstboss.x);
				draw_set_color(c_white);
				draw_roundrect(obj_player.x + dir * 150, obj_player.y - 30, obj_player.x + dir * 25, obj_player.y,false);
				draw_set_color(c_black);
				//draw_roundrect(670, 450, 730, 795, true);
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
								draw_text_ext_transformed(obj_player.x + dir * 145, 
										  obj_player.y-28, 
										  "Fuck you, leather man.", 
										  15,
										  200,
										  0.6,
										  0.6,
										  0
										  );
				//draw_text(obj_player.x + dir * 100, obj_player.y + 15, "Fuck you, leather man.");
				//if(keyboard_key_press(vk_enter)){
					//dialog += 1;
					break;
				//}
	
			case 2:
				dir = sign(obj_player.x - obj_firstboss.x);
				draw_roundrect(boss_x - dir * 25 , obj_player.y-30, boss_x - dir * 150, obj_player.y,false);
				draw_set_color(c_black);
				//draw_roundrect(670, 450, 730, 795, true);
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
				draw_text_ext_transformed(boss_x - dir * 30, 
										  obj_player.y-28, 
										  "No fuck you.", 
										  15,
										  200,
										  0.6,
										  0.6,
										  0
										  );
				//if(keyboard_key_press(vk_enter)){
					//dialog += 1;
					break;
				//}
		}	
		break;
	}
	default: 
		dialog = 3
		break;
}
	 
	if(dialog > 2){
		instance_destroy(self);
		obj_firstboss.start_fight = true
	}
//}