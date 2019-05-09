/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0D35C3AC
/// @DnDDisabled : 1
/// @DnDArgument : "x" "-10"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-30"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "state"


/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4BA19583
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 493CE6D3
/// @DnDArgument : "var" "en_health"
/// @DnDArgument : "op" "2"
if(en_health > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 5B6A5745
	/// @DnDParent : 493CE6D3
	/// @DnDArgument : "x1" "-30"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "-25"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "+30"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "-20"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "value" "en_health"
	/// @DnDArgument : "mincol" "$FF0000FF"
	/// @DnDArgument : "maxcol" "$FF00FF00"
	draw_healthbar(x + -30, y + -25, x + +30, y + -20, en_health, $FFFFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3D14658F
/// @DnDDisabled : 1
/// @DnDArgument : "code" "draw_set_alpha(0.5);$(13_10)draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,false);$(13_10)"