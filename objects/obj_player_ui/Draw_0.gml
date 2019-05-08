/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6BA987DD
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "88f04503-fb64-43bb-97e3-e6e32fe63361"
var l6BA987DD_0 = false;
l6BA987DD_0 = instance_exists(obj_player);
if(l6BA987DD_0)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 3000F81D
	/// @DnDParent : 6BA987DD
	/// @DnDArgument : "font" "font_UI"
	/// @DnDSaveInfo : "font" "63e6f3e9-99de-4f3f-9a06-4f1c3894ae52"
	draw_set_font(font_UI);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 40F30122
	/// @DnDParent : 6BA987DD
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 564A532F
	/// @DnDParent : 6BA987DD
	/// @DnDArgument : "x" "ui_placement_x"
	/// @DnDArgument : "y" "ui_placement_y"
	/// @DnDArgument : "xscale" "0.4"
	/// @DnDArgument : "yscale" "0.4"
	/// @DnDArgument : "caption" ""Oleg""
	draw_text_transformed(ui_placement_x, ui_placement_y, string("Oleg") + "", 0.4, 0.4, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 521ACEBE
	/// @DnDParent : 6BA987DD
	/// @DnDArgument : "x1" "ui_placement_x "
	/// @DnDArgument : "y1" "ui_placement_y + 13"
	/// @DnDArgument : "x2" "ui_placement_x + 00040"
	/// @DnDArgument : "y2" "ui_placement_y + 20"
	/// @DnDArgument : "value" "obj_player.player_hp"
	/// @DnDArgument : "backcol" "$FF191919"
	/// @DnDArgument : "barcol" "$FF00004C"
	/// @DnDArgument : "mincol" "$FF0C71FF"
	/// @DnDArgument : "maxcol" "$FF00FF00"
	draw_healthbar(ui_placement_x , ui_placement_y + 13, ui_placement_x + 00040, ui_placement_y + 20, obj_player.player_hp, $FF191919 & $FFFFFF, $FF0C71FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF191919>>24) != 0), (($FF00004C>>24) != 0));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3B8B69BB
else
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 027A17FF
	/// @DnDParent : 3B8B69BB
	/// @DnDArgument : "obj" "obj_firstboss"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "5c8c7e43-25a7-4ead-a333-51913394cc7e"
	var l027A17FF_0 = false;
	l027A17FF_0 = instance_exists(obj_firstboss);
	if(!l027A17FF_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 67B0CAA9
		/// @DnDParent : 027A17FF
		instance_destroy();
	}
}