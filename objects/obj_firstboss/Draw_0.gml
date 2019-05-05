/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3741CB5E
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C90A05C
/// @DnDArgument : "var" "self.sprite_index"
/// @DnDArgument : "value" "spr_boss_otjimania"
if(self.sprite_index == spr_boss_otjimania)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0ED92AD0
	/// @DnDParent : 5C90A05C
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-40"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "otjatia"
	draw_text(x + 0, y + -40,  + string(otjatia));
}