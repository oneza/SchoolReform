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

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 24BE3FE7
/// @DnDArgument : "var" "timer"
/// @DnDArgument : "op" "3"
if(timer <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03837B31
	/// @DnDParent : 24BE3FE7
	/// @DnDArgument : "var" "otjatia"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "obj_firstboss.otjatia"
	if(otjatia > obj_firstboss.otjatia)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 35817E27
		/// @DnDParent : 03837B31
		/// @DnDArgument : "x" "-50"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-60"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""YOU WON ""
		draw_text(x + -50, y + -60, string("YOU WON ") + "");
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 31C8AF8C
		/// @DnDParent : 03837B31
		/// @DnDArgument : "room" "rm_start"
		/// @DnDSaveInfo : "room" "46577f6d-5681-4769-8a4f-41b5a71dc131"
		room_goto(rm_start);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 671AD8F7
	/// @DnDParent : 24BE3FE7
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 05DD190E
		/// @DnDParent : 671AD8F7
		/// @DnDArgument : "x" "-50"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-60"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "caption" ""YOU LOST ""
		draw_text(x + -50, y + -60, string("YOU LOST ") + "");
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4356600E
		/// @DnDParent : 671AD8F7
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4F1D6D50
		/// @DnDParent : 671AD8F7
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-70"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_player"
		/// @DnDSaveInfo : "objectid" "88f04503-fb64-43bb-97e3-e6e32fe63361"
		instance_create_layer(x + 0, y + -70, "Instances", obj_player);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 59D5FB78
		/// @DnDParent : 671AD8F7
		/// @DnDArgument : "code" "obj_firstboss.sprite_index=spr_firstboss;$(13_10)obj_firstboss.y+=80"
		obj_firstboss.sprite_index=spr_firstboss;
		obj_firstboss.y+=80
	}
}