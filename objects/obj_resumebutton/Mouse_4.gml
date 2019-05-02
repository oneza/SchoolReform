/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4866C04B
/// @DnDArgument : "code" "global.gameIsPaused = false;$(13_10)instance_activate_all();$(13_10)//layer_vspeed("GameBackground",1.5);$(13_10)instance_destroy(obj_mainmenubutton);$(13_10)instance_destroy(obj_resumebutton);$(13_10)//instance_destroy(obj_statusBar1);$(13_10)//instance_destroy(obj_scoreabove);$(13_10)"
global.gameIsPaused = false;
instance_activate_all();
//layer_vspeed("GameBackground",1.5);
instance_destroy(obj_mainmenubutton);
instance_destroy(obj_resumebutton);
//instance_destroy(obj_statusBar1);
//instance_destroy(obj_scoreabove);