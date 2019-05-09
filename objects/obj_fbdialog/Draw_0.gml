/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 242E74A1
/// @DnDArgument : "code" "draw_set_font(fn_tnr);$(13_10)draw_set_color(c_white);$(13_10)if(abs(obj_player.x - obj_firstboss.x) <= 300 && abs(obj_player.y - obj_firstboss.y) <= 50){$(13_10)	switch(dialog){$(13_10)		case 0:$(13_10)			dir = sign(obj_player.x - obj_firstboss.x);$(13_10)			draw_roundrect(boss_x - dir * 200, boss_y, boss_x - dir * 100, boss_y + 30, false);$(13_10)			draw_set_color(c_black);$(13_10)			//draw_roundrect(670, 450, 730, 795, true);$(13_10)			draw_set_halign(fa_center);$(13_10)			draw_set_valign(fa_middle);$(13_10)			draw_text(boss_x - dir * 200, boss_y + 15, "Hey buddy, I think you've got the wrong door, the leather club's two blocks down.");$(13_10)			if(keyboard_key_press(vk_enter)){$(13_10)				dialog += 1;$(13_10)				break;$(13_10)			}$(13_10)			$(13_10)		case 1:$(13_10)			dir = sign(obj_player.x - obj_firstboss.x);$(13_10)			draw_roundrect(obj_player.x + dir * 100, obj_player.y, obj_player.x + dir * 200, obj_player.y + 30,false);$(13_10)			draw_set_color(c_black);$(13_10)			//draw_roundrect(670, 450, 730, 795, true);$(13_10)			draw_set_halign(fa_center);$(13_10)			draw_set_valign(fa_middle);$(13_10)			draw_text(obj_player.x + dir * 100, obj_player.y + 15, "Fuck you, leather man.");$(13_10)			if(keyboard_key_press(vk_enter)){$(13_10)				dialog += 1;$(13_10)				break;$(13_10)			}$(13_10)	$(13_10)		case 2:$(13_10)			dir = sign(obj_player.x - obj_firstboss.x);$(13_10)			draw_roundrect(boss_x - dir * 200, boss_y, boss_x - dir * 100, boss_y + 30, false);$(13_10)			draw_set_color(c_black);$(13_10)			//draw_roundrect(670, 450, 730, 795, true);$(13_10)			draw_set_halign(fa_center);$(13_10)			draw_set_valign(fa_middle);$(13_10)			draw_text(boss_x - dir * 200, boss_y + 15, "No fuck you.");$(13_10)			if(keyboard_key_press(vk_enter)){$(13_10)				dialog += 1;$(13_10)				break;$(13_10)			}$(13_10)	} $(13_10)	if(dialog > 2){$(13_10)		instance_destroy(self);$(13_10)	}$(13_10)}"
draw_set_font(fn_tnr);
draw_set_color(c_white);
if(abs(obj_player.x - obj_firstboss.x) <= 300 && abs(obj_player.y - obj_firstboss.y) <= 50){
	switch(dialog){
		case 0:
			dir = sign(obj_player.x - obj_firstboss.x);
			draw_roundrect(boss_x - dir * 200, boss_y, boss_x - dir * 100, boss_y + 30, false);
			draw_set_color(c_black);
			//draw_roundrect(670, 450, 730, 795, true);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_text(boss_x - dir * 200, boss_y + 15, "Hey buddy, I think you've got the wrong door, the leather club's two blocks down.");
			if(keyboard_key_press(vk_enter)){
				dialog += 1;
				break;
			}
			
		case 1:
			dir = sign(obj_player.x - obj_firstboss.x);
			draw_roundrect(obj_player.x + dir * 100, obj_player.y, obj_player.x + dir * 200, obj_player.y + 30,false);
			draw_set_color(c_black);
			//draw_roundrect(670, 450, 730, 795, true);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_text(obj_player.x + dir * 100, obj_player.y + 15, "Fuck you, leather man.");
			if(keyboard_key_press(vk_enter)){
				dialog += 1;
				break;
			}
	
		case 2:
			dir = sign(obj_player.x - obj_firstboss.x);
			draw_roundrect(boss_x - dir * 200, boss_y, boss_x - dir * 100, boss_y + 30, false);
			draw_set_color(c_black);
			//draw_roundrect(670, 450, 730, 795, true);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_text(boss_x - dir * 200, boss_y + 15, "No fuck you.");
			if(keyboard_key_press(vk_enter)){
				dialog += 1;
				break;
			}
	} 
	if(dialog > 2){
		instance_destroy(self);
	}
}