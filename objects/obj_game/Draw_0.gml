/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 514AF5B9
/// @DnDApplyTo : ec9bbf0d-8cd8-4128-ac85-195c8a4a361b
with(obj_player) {
	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 15B7B4FA
	/// @DnDParent : 514AF5B9
	/// @DnDArgument : "x1" "30"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "20"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "70"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "10"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "value" "player_hp"
	/// @DnDArgument : "backcol" "$FF191919"
	/// @DnDArgument : "barcol" "$FF00004C"
	/// @DnDArgument : "mincol" "$FFB2B2FF"
	/// @DnDArgument : "maxcol" "$FF1919FF"
	draw_healthbar(x + 30, y + 20, x + 70, y + 10, player_hp, $FF191919 & $FFFFFF, $FFB2B2FF & $FFFFFF, $FF1919FF & $FFFFFF, 0, (($FF191919>>24) != 0), (($FF00004C>>24) != 0));
}