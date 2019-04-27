/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 070C1528
/// @DnDArgument : "var" "en_health"
/// @DnDArgument : "op" "3"
if(en_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 185EF18E
	/// @DnDParent : 070C1528
	instance_destroy();
}