/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 21D8520F
/// @DnDArgument : "code" "draw_self();$(13_10)"
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 17F4C9FA
/// @DnDArgument : "x" "-50"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-100"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_qte_down"
/// @DnDSaveInfo : "sprite" "7888278b-c490-483c-8351-9fbb8183f3d3"
draw_sprite(spr_qte_down, 0, x + -50, y + -100);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 68BA467F
/// @DnDArgument : "font" "font0"
/// @DnDSaveInfo : "font" "3a373f07-6aff-4039-8e6b-c10d983e6a7d"
draw_set_font(font0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 186CD254
/// @DnDArgument : "x" "-20"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-40"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "otjatia"
draw_text(x + -20, y + -40, string("") + string(otjatia));