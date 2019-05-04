/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 24FB63C0
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "88f04503-fb64-43bb-97e3-e6e32fe63361"
var l24FB63C0_0 = false;
l24FB63C0_0 = instance_exists(obj_player);
if(l24FB63C0_0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 472B8F9A
	/// @DnDParent : 24FB63C0
	/// @DnDArgument : "code" "ui_placement_x = obj_player.x - x_offset$(13_10)ui_placement_y = obj_player.y - y_offset"
	ui_placement_x = obj_player.x - x_offset
	ui_placement_y = obj_player.y - y_offset
}