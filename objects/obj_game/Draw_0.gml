/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7E521FF4
/// @DnDArgument : "code" "if (global.gameIsPaused){$(13_10)	for(var i = array_height_2d(allObjects)-1; i >= 0; i--){$(13_10)		draw_sprite_ext(allObjects[i, 0],$(13_10)						allObjects[i, 1],$(13_10)						allObjects[i, 2],$(13_10)						allObjects[i, 3],$(13_10)						allObjects[i, 4],$(13_10)						allObjects[i, 5],$(13_10)						allObjects[i, 6],$(13_10)						allObjects[i, 7],$(13_10)						allObjects[i, 8]$(13_10)						);$(13_10)	}$(13_10)	//draw_sprite_ext(spr_mmbutton, 0, 250, 324, 1, 1, 0, 0, 0);$(13_10)}$(13_10)"
if (global.gameIsPaused){
	for(var i = array_height_2d(allObjects)-1; i >= 0; i--){
		draw_sprite_ext(allObjects[i, 0],
						allObjects[i, 1],
						allObjects[i, 2],
						allObjects[i, 3],
						allObjects[i, 4],
						allObjects[i, 5],
						allObjects[i, 6],
						allObjects[i, 7],
						allObjects[i, 8]
						);
	}
	//draw_sprite_ext(spr_mmbutton, 0, 250, 324, 1, 1, 0, 0, 0);
}

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7B816FD1
/// @DnDDisabled : 1
/// @DnDArgument : "font" "font0"
/// @DnDSaveInfo : "font" "3a373f07-6aff-4039-8e6b-c10d983e6a7d"


/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 54E29FF3
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 395775CF
/// @DnDDisabled : 1
/// @DnDParent : 54E29FF3
/// @DnDArgument : "x" "699"
/// @DnDArgument : "y" "60"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" ""SPACE""

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 72F86517
/// @DnDDisabled : 1
/// @DnDArgument : "key" "ord("W")"
/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 204E3F05
/// @DnDDisabled : 1
/// @DnDParent : 72F86517
/// @DnDArgument : "x" "699"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" ""W""

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4E4AB43E
/// @DnDDisabled : 1
/// @DnDArgument : "key" "ord("D")"
/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 592BFCBE
/// @DnDDisabled : 1
/// @DnDParent : 4E4AB43E
/// @DnDArgument : "x" "749"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" ""D""

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 36C0E6AA
/// @DnDDisabled : 1
/// @DnDArgument : "key" "ord("A")"
/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4E293D56
/// @DnDDisabled : 1
/// @DnDParent : 36C0E6AA
/// @DnDArgument : "x" "649"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" ""A""