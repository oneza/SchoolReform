/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 56A30EC8
/// @DnDArgument : "code" "//if(abs(obj_player.x - obj_door.x) <= 30){$(13_10)//	dir = sign(obj_player.x - obj_door.x);$(13_10)//	draw_set_alpha(0.8);$(13_10)//	draw_set_color(c_white);$(13_10)//	draw_roundrect(obj_door.x + dir * 100, obj_door.y + 10, obj_door.x + dir * 30, obj_door.y + 25, false);$(13_10)//	draw_set_halign(fa_center);$(13_10)//	draw_set_valign(fa_middle);$(13_10)//	draw_set_color(c_black);$(13_10)//	draw_set_font(fn_tnr);$(13_10)//	draw_text(obj_door.x + dir * 100, obj_door.y + 10, "NAZMI E DEBIL")$(13_10)//}"
//if(abs(obj_player.x - obj_door.x) <= 30){
//	dir = sign(obj_player.x - obj_door.x);
//	draw_set_alpha(0.8);
//	draw_set_color(c_white);
//	draw_roundrect(obj_door.x + dir * 100, obj_door.y + 10, obj_door.x + dir * 30, obj_door.y + 25, false);
//	draw_set_halign(fa_center);
//	draw_set_valign(fa_middle);
//	draw_set_color(c_black);
//	draw_set_font(fn_tnr);
//	draw_text(obj_door.x + dir * 100, obj_door.y + 10, "NAZMI E DEBIL")
//}