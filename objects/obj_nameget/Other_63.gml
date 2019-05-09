/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D9FCD58
/// @DnDArgument : "code" "var i_d = ds_map_find_value(async_load, "id");$(13_10)if i_d == name$(13_10){$(13_10)    if ds_map_find_value(async_load, "status")$(13_10)    {$(13_10)        if (string_length(ds_map_find_value(async_load, "result")) > 8 || ds_map_find_value(async_load, "result") == "")$(13_10)        {$(13_10)            if (string_length(ds_map_find_value(async_load, "result")) >8)$(13_10)            {$(13_10)                show_message_async("Name too long");$(13_10)                name = get_string_async("Enter your name:", "AAA");$(13_10)            }$(13_10)            $(13_10)            if (ds_map_find_value(async_load, "result") == "")$(13_10)            {$(13_10)                show_message_async("No name entered!");$(13_10)                name = get_string_async("Enter your name:", "AAA");$(13_10)            }$(13_10)        }$(13_10)        else if (string_length(ds_map_find_value(async_load, "result")) <=8 && ds_map_find_value(async_load, "result") != "")$(13_10)        {$(13_10)            global.name = ds_map_find_value(async_load, "result");$(13_10)			room_goto(rm_level_1);$(13_10)		}$(13_10)	}$(13_10)}"
var i_d = ds_map_find_value(async_load, "id");
if i_d == name
{
    if ds_map_find_value(async_load, "status")
    {
        if (string_length(ds_map_find_value(async_load, "result")) > 8 || ds_map_find_value(async_load, "result") == "")
        {
            if (string_length(ds_map_find_value(async_load, "result")) >8)
            {
                show_message_async("Name too long");
                name = get_string_async("Enter your name:", "AAA");
            }
            
            if (ds_map_find_value(async_load, "result") == "")
            {
                show_message_async("No name entered!");
                name = get_string_async("Enter your name:", "AAA");
            }
        }
        else if (string_length(ds_map_find_value(async_load, "result")) <=8 && ds_map_find_value(async_load, "result") != "")
        {
            global.name = ds_map_find_value(async_load, "result");
			room_goto(rm_level_1);
		}
	}
}