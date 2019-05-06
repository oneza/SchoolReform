/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 288060A5
/// @DnDArgument : "code" "if(abs(obj_player.x - obj_door.x) <= 50 && abs(obj_player.y - obj_door.y) <= 150 ){$(13_10)	dir = sign(obj_player.x - obj_door.x);$(13_10)	draw_set_alpha(0.8);$(13_10)	draw_set_color(c_white);$(13_10)	draw_roundrect(obj_door.x + dir * 30, obj_door.y + 5, obj_door.x + dir * 150, obj_door.y + 35, false);$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_set_valign(fa_middle);$(13_10)	draw_set_color(c_black);$(13_10)	draw_set_font(fn_tnr);$(13_10)	draw_text(obj_door.x + dir * 88 , obj_door.y + 20, "NAZMI E DEBIL");$(13_10)}"
if(abs(obj_player.x - obj_door.x) <= 50 && abs(obj_player.y - obj_door.y) <= 150 ){
	dir = sign(obj_player.x - obj_door.x);
	draw_set_alpha(0.8);
	draw_set_color(c_white);
	draw_roundrect(obj_door.x + dir * 30, obj_door.y + 5, obj_door.x + dir * 150, obj_door.y + 35, false);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	draw_set_font(fn_tnr);
	draw_text(obj_door.x + dir * 88 , obj_door.y + 20, "NAZMI E DEBIL");
}