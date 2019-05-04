/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B83C579
/// @DnDArgument : "expr" "x - 30 + (other.x - x) / 2"
/// @DnDArgument : "var" "qte_placing"
qte_placing = x - 30 + (other.x - x) / 2;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6C39D3E7
/// @DnDArgument : "obj" "obj_qte_up"
/// @DnDSaveInfo : "obj" "9dd6ce27-1fdd-4f6c-b224-24a6e772d64a"
var l6C39D3E7_0 = false;
l6C39D3E7_0 = instance_exists(obj_qte_up);
if(l6C39D3E7_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2D911BEB
	/// @DnDParent : 6C39D3E7
	/// @DnDArgument : "key" "vk_up"
	var l2D911BEB_0;
	l2D911BEB_0 = keyboard_check(vk_up);
	if (l2D911BEB_0)
	{
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 3D8A708A
		/// @DnDApplyTo : other
		/// @DnDParent : 2D911BEB
		with(other) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 62120196
			/// @DnDParent : 3D8A708A
			/// @DnDArgument : "expr" "-obj_player.base_damage"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "en_health"
			en_health += -obj_player.base_damage;
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 21D7B70B
		/// @DnDApplyTo : 9dd6ce27-1fdd-4f6c-b224-24a6e772d64a
		/// @DnDParent : 2D911BEB
		with(obj_qte_up) instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 398EBA71
/// @DnDArgument : "obj" "obj_qte_down"
/// @DnDSaveInfo : "obj" "692c3688-79a0-49e9-baf7-de273b8f62ba"
var l398EBA71_0 = false;
l398EBA71_0 = instance_exists(obj_qte_down);
if(l398EBA71_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 15F9591A
	/// @DnDParent : 398EBA71
	/// @DnDArgument : "key" "vk_down"
	var l15F9591A_0;
	l15F9591A_0 = keyboard_check(vk_down);
	if (l15F9591A_0)
	{
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 63224D60
		/// @DnDApplyTo : other
		/// @DnDParent : 15F9591A
		with(other) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 50B192B7
			/// @DnDParent : 63224D60
			/// @DnDArgument : "expr" "-obj_player.base_damage"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "en_health"
			en_health += -obj_player.base_damage;
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 414BBA98
		/// @DnDApplyTo : 692c3688-79a0-49e9-baf7-de273b8f62ba
		/// @DnDParent : 15F9591A
		with(obj_qte_down) instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1709018C
/// @DnDArgument : "obj" "obj_qte_up"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "9dd6ce27-1fdd-4f6c-b224-24a6e772d64a"
var l1709018C_0 = false;
l1709018C_0 = instance_exists(obj_qte_up);
if(!l1709018C_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4549A461
	/// @DnDParent : 1709018C
	/// @DnDArgument : "obj" "obj_qte_down"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "692c3688-79a0-49e9-baf7-de273b8f62ba"
	var l4549A461_0 = false;
	l4549A461_0 = instance_exists(obj_qte_down);
	if(!l4549A461_0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 246389B7
		/// @DnDParent : 4549A461
		/// @DnDArgument : "key" "vk_up"
		/// @DnDArgument : "not" "1"
		var l246389B7_0;
		l246389B7_0 = keyboard_check(vk_up);
		if (!l246389B7_0)
		{
			/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
			/// @DnDVersion : 1
			/// @DnDHash : 18059319
			/// @DnDParent : 246389B7
			/// @DnDArgument : "key" "vk_down"
			/// @DnDArgument : "not" "1"
			var l18059319_0;
			l18059319_0 = keyboard_check(vk_down);
			if (!l18059319_0)
			{
				/// @DnDAction : YoYo Games.Random.Randomize
				/// @DnDVersion : 1
				/// @DnDHash : 0A85BEB1
				/// @DnDParent : 18059319
				randomize();
			
				/// @DnDAction : YoYo Games.Random.Get_Random_Number
				/// @DnDVersion : 1
				/// @DnDHash : 1D1FA1AA
				/// @DnDParent : 18059319
				/// @DnDArgument : "var" "get_a_qte"
				/// @DnDArgument : "type" "1"
				get_a_qte = floor(random_range(0, 1 + 1));
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 512B6139
				/// @DnDParent : 18059319
				/// @DnDArgument : "var" "get_a_qte"
				/// @DnDArgument : "value" "1"
				if(get_a_qte == 1)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 28822567
					/// @DnDParent : 512B6139
					/// @DnDArgument : "xpos" "qte_placing"
					/// @DnDArgument : "ypos" "-100"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_qte_up"
					/// @DnDSaveInfo : "objectid" "9dd6ce27-1fdd-4f6c-b224-24a6e772d64a"
					instance_create_layer(qte_placing, y + -100, "Instances", obj_qte_up);
				}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1C4410D1
				/// @DnDParent : 18059319
				/// @DnDArgument : "var" "get_a_qte"
				if(get_a_qte == 0)
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 014A4BE4
					/// @DnDParent : 1C4410D1
					/// @DnDArgument : "xpos" "qte_placing"
					/// @DnDArgument : "ypos" "-100"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_qte_down"
					/// @DnDSaveInfo : "objectid" "692c3688-79a0-49e9-baf7-de273b8f62ba"
					instance_create_layer(qte_placing, y + -100, "Instances", obj_qte_down);
				}
			}
		}
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2CED2FAC
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_enemy_weak"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "d6f29912-5812-4ed3-ab3c-bc6850d70b3d"
var l2CED2FAC_0 = instance_place(x + 0, y + 0, obj_enemy_weak);
if (!(l2CED2FAC_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 58D89522
	/// @DnDApplyTo : 9dd6ce27-1fdd-4f6c-b224-24a6e772d64a
	/// @DnDParent : 2CED2FAC
	with(obj_qte_up) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6320C9A4
	/// @DnDApplyTo : 692c3688-79a0-49e9-baf7-de273b8f62ba
	/// @DnDParent : 2CED2FAC
	with(obj_qte_down) instance_destroy();
}