/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02CE5457
/// @DnDArgument : "code" "ui_placement_x = obj_player_ui.ui_placement_x$(13_10)ui_placement_y = obj_player_ui.ui_placement_y"
ui_placement_x = obj_player_ui.ui_placement_x
ui_placement_y = obj_player_ui.ui_placement_y

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 40CC0A32
/// @DnDArgument : "x1" "ui_placement_x"
/// @DnDArgument : "y1" "ui_placement_y + 22"
/// @DnDArgument : "x2" "ui_placement_x + 7"
/// @DnDArgument : "y2" "ui_placement_y + 33"
/// @DnDArgument : "direction" "3"
/// @DnDArgument : "value" "current_buff_duration"
/// @DnDArgument : "backcol" "$FF191919"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
draw_healthbar(ui_placement_x, ui_placement_y + 22, ui_placement_x + 7, ui_placement_y + 33, current_buff_duration, $FF191919 & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 3, (($FF191919>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 437902D4
/// @DnDArgument : "font" "font_UI"
/// @DnDSaveInfo : "font" "63e6f3e9-99de-4f3f-9a06-4f1c3894ae52"
draw_set_font(font_UI);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1625499C
/// @DnDArgument : "x" "ui_placement_x  + 3"
/// @DnDArgument : "y" "ui_placement_y + 29"
/// @DnDArgument : "xscale" "0.2"
/// @DnDArgument : "yscale" "0.2"
/// @DnDArgument : "caption" ""S ""
draw_text_transformed(ui_placement_x  + 3, ui_placement_y + 29, string("S ") + "", 0.2, 0.2, 0);