/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6AAFA171
/// @DnDArgument : "code" "draw_self()$(13_10)if place_meeting(x,y,obj_player){$(13_10)	instance_activate_object(udalite_potom);$(13_10)}$(13_10)else{instance_deactivate_object(udalite_potom);}"
draw_self()
if place_meeting(x,y,obj_player){
	instance_activate_object(udalite_potom);
}
else{instance_deactivate_object(udalite_potom);}