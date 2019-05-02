/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E10ABD0
/// @DnDArgument : "code" "enum e_state$(13_10){$(13_10)	idle,$(13_10)	chase,$(13_10)	patrol$(13_10)}$(13_10)global.gameIsPaused = false;$(13_10)allObjects[0, 0] = noone;"
enum e_state
{
	idle,
	chase,
	patrol
}
global.gameIsPaused = false;
allObjects[0, 0] = noone;