/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 60C78545
/// @DnDBreak : 1

/// @DnDArgument : "code" "if (!in_combat) {$(13_10)	enemy_id = other.id$(13_10)	in_combat = true$(13_10)	//qte_in_sequence = []$(13_10)	for (var i = 0; i < qte_in_sequence; ++i) {$(13_10)	    randomize();$(13_10)		qte_sequence[i] = irandom(3)$(13_10)		switch (qte_sequence[i]) {$(13_10)		    case 0:$(13_10)		        qte_sequence[i] = obj_qte_up$(13_10)		        break;$(13_10)		    case 1:$(13_10)		        qte_sequence[i] = obj_qte_down$(13_10)		        break;			$(13_10)		    case 2:$(13_10)		        qte_sequence[i] = obj_qte_left$(13_10)		        break;$(13_10)		    case 3:$(13_10)		        qte_sequence[i] = obj_qte_right$(13_10)		        break;			$(13_10)		}$(13_10)	}$(13_10)	showing_qte_number = 0$(13_10)	react_qte_number = 0$(13_10)	alarm[10] = 5$(13_10)}$(13_10)$(13_10)"
if (!in_combat) {
	enemy_id = other.id
	in_combat = true
	//qte_in_sequence = []
	for (var i = 0; i < qte_in_sequence; ++i) {
	    randomize();
		qte_sequence[i] = irandom(3)
		switch (qte_sequence[i]) {
		    case 0:
		        qte_sequence[i] = obj_qte_up
		        break;
		    case 1:
		        qte_sequence[i] = obj_qte_down
		        break;			
		    case 2:
		        qte_sequence[i] = obj_qte_left
		        break;
		    case 3:
		        qte_sequence[i] = obj_qte_right
		        break;			
		}
	}
	showing_qte_number = 0
	react_qte_number = 0
	alarm[10] = 5
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B83C579
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "x - 30 + (other.x - x) / 2"
/// @DnDArgument : "var" "qte_placing"


/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6C39D3E7
/// @DnDDisabled : 1
/// @DnDArgument : "obj" "obj_qte_up"
/// @DnDSaveInfo : "obj" "9dd6ce27-1fdd-4f6c-b224-24a6e772d64a"
/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2D911BEB
/// @DnDDisabled : 1
/// @DnDParent : 6C39D3E7
/// @DnDArgument : "key" "vk_up"
/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 3D8A708A
/// @DnDDisabled : 1
/// @DnDApplyTo : other
/// @DnDParent : 2D911BEB
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 62120196
/// @DnDDisabled : 1
/// @DnDParent : 3D8A708A
/// @DnDArgument : "expr" "-obj_player.base_damage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "en_health"

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 21D7B70B
/// @DnDDisabled : 1
/// @DnDApplyTo : 9dd6ce27-1fdd-4f6c-b224-24a6e772d64a
/// @DnDParent : 2D911BEB

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 398EBA71
/// @DnDDisabled : 1
/// @DnDArgument : "obj" "obj_qte_down"
/// @DnDSaveInfo : "obj" "692c3688-79a0-49e9-baf7-de273b8f62ba"
/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 15F9591A
/// @DnDDisabled : 1
/// @DnDParent : 398EBA71
/// @DnDArgument : "key" "vk_down"
/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 63224D60
/// @DnDDisabled : 1
/// @DnDApplyTo : other
/// @DnDParent : 15F9591A
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 50B192B7
/// @DnDDisabled : 1
/// @DnDParent : 63224D60
/// @DnDArgument : "expr" "-obj_player.base_damage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "en_health"

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 414BBA98
/// @DnDDisabled : 1
/// @DnDApplyTo : 692c3688-79a0-49e9-baf7-de273b8f62ba
/// @DnDParent : 15F9591A

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1709018C
/// @DnDDisabled : 1
/// @DnDArgument : "obj" "obj_qte_up"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "9dd6ce27-1fdd-4f6c-b224-24a6e772d64a"
/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4549A461
/// @DnDDisabled : 1
/// @DnDParent : 1709018C
/// @DnDArgument : "obj" "obj_qte_down"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "692c3688-79a0-49e9-baf7-de273b8f62ba"
/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 246389B7
/// @DnDDisabled : 1
/// @DnDParent : 4549A461
/// @DnDArgument : "key" "vk_up"
/// @DnDArgument : "not" "1"
/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 18059319
/// @DnDDisabled : 1
/// @DnDParent : 246389B7
/// @DnDArgument : "key" "vk_down"
/// @DnDArgument : "not" "1"
/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 0A85BEB1
/// @DnDDisabled : 1
/// @DnDParent : 18059319


/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1D1FA1AA
/// @DnDDisabled : 1
/// @DnDParent : 18059319
/// @DnDArgument : "var" "get_a_qte"
/// @DnDArgument : "type" "1"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 512B6139
/// @DnDDisabled : 1
/// @DnDParent : 18059319
/// @DnDArgument : "var" "get_a_qte"
/// @DnDArgument : "value" "1"
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 28822567
/// @DnDDisabled : 1
/// @DnDParent : 512B6139
/// @DnDArgument : "xpos" "qte_placing"
/// @DnDArgument : "ypos" "-100"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_qte_up"
/// @DnDSaveInfo : "objectid" "9dd6ce27-1fdd-4f6c-b224-24a6e772d64a"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C4410D1
/// @DnDDisabled : 1
/// @DnDParent : 18059319
/// @DnDArgument : "var" "get_a_qte"
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 014A4BE4
/// @DnDDisabled : 1
/// @DnDParent : 1C4410D1
/// @DnDArgument : "xpos" "qte_placing"
/// @DnDArgument : "ypos" "-100"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_qte_down"
/// @DnDSaveInfo : "objectid" "692c3688-79a0-49e9-baf7-de273b8f62ba"

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2CED2FAC
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_enemy_weak"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "d6f29912-5812-4ed3-ab3c-bc6850d70b3d"
/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 58D89522
/// @DnDDisabled : 1
/// @DnDApplyTo : 9dd6ce27-1fdd-4f6c-b224-24a6e772d64a
/// @DnDParent : 2CED2FAC


/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6320C9A4
/// @DnDDisabled : 1
/// @DnDApplyTo : 692c3688-79a0-49e9-baf7-de273b8f62ba
/// @DnDParent : 2CED2FAC