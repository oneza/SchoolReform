/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61335510
/// @DnDArgument : "code" "switch(action){$(13_10)	case 0:$(13_10)		room_goto(rm_level_1);$(13_10)		break;$(13_10)		$(13_10)	case 1:$(13_10)		scr_loadgame();$(13_10)		break;$(13_10)$(13_10)	case 2:$(13_10)		global.msg = show_question_async("Are you sure you want to exit this masterpiece?");$(13_10)		break;$(13_10)}"
switch(action){
	case 0:
		room_goto(rm_level_1);
		break;
		
	case 1:
		scr_loadgame();
		break;

	case 2:
		global.msg = show_question_async("Are you sure you want to exit this masterpiece?");
		break;
}