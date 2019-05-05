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
	/// @DnDArgument : "code" "var camera = view_get_camera(0)$(13_10)ui_placement_x = camera_get_view_x(camera) + 5$(13_10)ui_placement_y = camera_get_view_y(camera)$(13_10)//ui_placement_x = view_get_xport(0) - x_offset$(13_10)//ui_placement_y = view_get_yport(0) - y_offset"
	var camera = view_get_camera(0)
	ui_placement_x = camera_get_view_x(camera) + 5
	ui_placement_y = camera_get_view_y(camera)
	//ui_placement_x = view_get_xport(0) - x_offset
	//ui_placement_y = view_get_yport(0) - y_offset
}