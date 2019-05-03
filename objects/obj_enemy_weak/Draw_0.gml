/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 77A9CE44
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "sprite21"
/// @DnDSaveInfo : "sprite" "e16173ce-b4dd-4434-9021-29a887797cef"
draw_sprite(sprite21, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 3070E7FC
/// @DnDArgument : "x1" "-20"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "-30"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "20"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "-25"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "value" "en_health"
/// @DnDArgument : "backcol" "$FF191919"
/// @DnDArgument : "barcol" "$FF00004C"
/// @DnDArgument : "mincol" "$FFB2B2FF"
/// @DnDArgument : "maxcol" "$FF1919FF"
draw_healthbar(x + -20, y + -30, x + 20, y + -25, en_health, $FF191919 & $FFFFFF, $FFB2B2FF & $FFFFFF, $FF1919FF & $FFFFFF, 0, (($FF191919>>24) != 0), (($FF00004C>>24) != 0));