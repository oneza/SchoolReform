/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 077F1966
/// @DnDArgument : "code" "draw_self()$(13_10)//draw_set_alpha(0.5);$(13_10)//draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,false);$(13_10)"
draw_self()
//draw_set_alpha(0.5);
//draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,false);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 534976B3
/// @DnDDisabled : 1
/// @DnDArgument : "x" "-15"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-30"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" "!sliding"
/// @DnDArgument : "var" "(!sliding)&&(!in_combat)&&(speed_v==0)&&(abs(speed_h) <= 0.7) "