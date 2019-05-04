/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 1E180B2A
/// @DnDArgument : "x1" "ui_placement_x + 9"
/// @DnDArgument : "y1" "ui_placement_y + 17"
/// @DnDArgument : "x2" "ui_placement_x + 16"
/// @DnDArgument : "y2" "ui_placement_y + 27"
/// @DnDArgument : "direction" "3"
/// @DnDArgument : "value" "current_buff_duration"
/// @DnDArgument : "backcol" "$FF191919"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
draw_healthbar(ui_placement_x + 9, ui_placement_y + 17, ui_placement_x + 16, ui_placement_y + 27, current_buff_duration, $FF191919 & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 3, (($FF191919>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7F4A244E
/// @DnDArgument : "font" "font_UI"
/// @DnDSaveInfo : "font" "63e6f3e9-99de-4f3f-9a06-4f1c3894ae52"
draw_set_font(font_UI);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 68FC0990
/// @DnDArgument : "x" "ui_placement_x  + 11"
/// @DnDArgument : "y" "ui_placement_y + 29"
/// @DnDArgument : "xscale" "0.2"
/// @DnDArgument : "yscale" "0.2"
/// @DnDArgument : "caption" ""D ""
draw_text_transformed(ui_placement_x  + 11, ui_placement_y + 29, string("D ") + "", 0.2, 0.2, 0);