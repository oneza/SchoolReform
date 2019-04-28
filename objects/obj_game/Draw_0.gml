/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7B816FD1
/// @DnDArgument : "font" "font0"
/// @DnDSaveInfo : "font" "3a373f07-6aff-4039-8e6b-c10d983e6a7d"
draw_set_font(font0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 514AF5B9
/// @DnDApplyTo : 88f04503-fb64-43bb-97e3-e6e32fe63361
with(obj_player) {
	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 15B7B4FA
	/// @DnDParent : 514AF5B9
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "-10"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "40"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "value" "player_hp"
	/// @DnDArgument : "backcol" "$FF191919"
	/// @DnDArgument : "barcol" "$FF00004C"
	/// @DnDArgument : "mincol" "$FFB2B2FF"
	/// @DnDArgument : "maxcol" "$FF1919FF"
	draw_healthbar(x + 0, y + -10, x + 40, y + 0, player_hp, $FF191919 & $FFFFFF, $FFB2B2FF & $FFFFFF, $FF1919FF & $FFFFFF, 0, (($FF191919>>24) != 0), (($FF00004C>>24) != 0));
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 54E29FF3
var l54E29FF3_0;
l54E29FF3_0 = keyboard_check(vk_space);
if (l54E29FF3_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 395775CF
	/// @DnDParent : 54E29FF3
	/// @DnDArgument : "x" "699"
	/// @DnDArgument : "y" "60"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""SPACE""
	draw_text(699, 60,  + string("SPACE"));
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 72F86517
/// @DnDArgument : "key" "ord("W")"
var l72F86517_0;
l72F86517_0 = keyboard_check(ord("W"));
if (l72F86517_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 204E3F05
	/// @DnDParent : 72F86517
	/// @DnDArgument : "x" "699"
	/// @DnDArgument : "y" "30"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""W""
	draw_text(699, 30,  + string("W"));
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4E4AB43E
/// @DnDArgument : "key" "ord("D")"
var l4E4AB43E_0;
l4E4AB43E_0 = keyboard_check(ord("D"));
if (l4E4AB43E_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 592BFCBE
	/// @DnDParent : 4E4AB43E
	/// @DnDArgument : "x" "749"
	/// @DnDArgument : "y" "30"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""D""
	draw_text(749, 30,  + string("D"));
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 36C0E6AA
/// @DnDArgument : "key" "ord("A")"
var l36C0E6AA_0;
l36C0E6AA_0 = keyboard_check(ord("A"));
if (l36C0E6AA_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 4E293D56
	/// @DnDParent : 36C0E6AA
	/// @DnDArgument : "x" "649"
	/// @DnDArgument : "y" "30"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""A""
	draw_text(649, 30,  + string("A"));
}