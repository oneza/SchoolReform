/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 399B9289
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var camera = view_get_camera(0)$(13_10)dialog_x = camera_get_view_x(camera) + 5$(13_10)dialog_y = camera_get_view_y(camera)$(13_10)$(13_10)boss_x = obj_firstboss.x;$(13_10)boss_y = obj_firstboss.y;$(13_10)$(13_10)player_x = obj_player.x;$(13_10)player_y = obj_player.y;$(13_10)$(13_10)dialog = 0;$(13_10)"
/// @description Execute Code
var camera = view_get_camera(0)
dialog_x = camera_get_view_x(camera) + 5
dialog_y = camera_get_view_y(camera)

boss_x = obj_firstboss.x;
boss_y = obj_firstboss.y;

player_x = obj_player.x;
player_y = obj_player.y;

dialog = 0;