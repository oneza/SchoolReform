/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02C7AEAC
/// @DnDArgument : "code" "var i_d, stat;$(13_10)i_d = ds_map_find_value(async_load, "id");$(13_10)if i_d == msg$(13_10)   {$(13_10)   if ds_map_find_value(async_load, "status")$(13_10)      {$(13_10)		game_end();$(13_10)      }$(13_10)   }"
var i_d, stat;
i_d = ds_map_find_value(async_load, "id");
if i_d == msg
   {
   if ds_map_find_value(async_load, "status")
      {
		game_end();
      }
   }