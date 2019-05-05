/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 431A5619
/// @DnDArgument : "key" "vk_right"
var l431A5619_0;
l431A5619_0 = keyboard_check(vk_right);
if (l431A5619_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5F157EDA
	/// @DnDParent : 431A5619
	/// @DnDArgument : "room" "rm_firstboss"
	/// @DnDSaveInfo : "room" "ec4a679b-cfc9-47fa-a4c4-d8255abbd781"
	room_goto(rm_firstboss);
}