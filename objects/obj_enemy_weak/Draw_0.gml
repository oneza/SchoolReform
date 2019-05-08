/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4BA19583
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 5B6A5745
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