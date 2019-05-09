/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C3EE717
/// @DnDArgument : "code" "var lay_id = layer_get_id("GameBackground");$(13_10)var lay_idd = layer_get_id("Instances_1");$(13_10)var back_id = layer_background_get_id(lay_id);$(13_10)if(global.gameIsPaused == false) {$(13_10)	var offset = 0;$(13_10)	for(var i = 0; i < instance_count; i++){$(13_10)		if(instance_find(all, i).sprite_index != -1) {$(13_10)		allObjects[i-offset, 0] = instance_find(all,i).sprite_index;$(13_10)		allObjects[i-offset,1] = instance_find(all,i).image_index;$(13_10)		allObjects[i-offset,2] = instance_find(all,i).x;$(13_10)		allObjects[i-offset,3] = instance_find(all,i).y;$(13_10)		allObjects[i-offset,4] = instance_find(all,i).image_xscale;$(13_10)		allObjects[i-offset,5] = instance_find(all,i).image_yscale;$(13_10)		allObjects[i-offset,6] = instance_find(all,i).image_angle;$(13_10)		allObjects[i-offset,7] = instance_find(all,i).image_blend;$(13_10)		allObjects[i-offset,8] = instance_find(all,i).image_alpha;$(13_10)		}$(13_10)		else offset++;$(13_10)	}$(13_10)	var camera = view_get_camera(0);$(13_10)	x_for_pause = camera_get_view_x(camera) + 355;$(13_10)	y_for_pause = camera_get_view_y(camera);$(13_10)	//x_for_pause = instance_find(obj_player, 0).x$(13_10)	//y_for_pause = instance_find(obj_player, 0).y$(13_10)	instance_deactivate_all(true);$(13_10)	instance_activate_layer(lay_idd);$(13_10)	instance_activate_object(obj_resumebutton);$(13_10)	instance_activate_object(obj_mainmenubutton);$(13_10)	layer_vspeed(lay_id,0);$(13_10)	global.gameIsPaused = true;$(13_10)} else {$(13_10)	instance_activate_all();$(13_10)	instance_destroy(obj_mainmenubutton)$(13_10)	instance_destroy(obj_resumebutton)$(13_10)	//instance_deactivate_object(obj_mainmenubutton);$(13_10)	//instance_deactivate_object(obj_resumebutton);$(13_10)	//instance_deactivate_object(obj_statusBar1);$(13_10)	//instance_deactivate_object(obj_scoreabove);$(13_10)	layer_vspeed(lay_id,1.5);$(13_10)	global.gameIsPaused = false;$(13_10)	allObjects = 0;$(13_10)}$(13_10)$(13_10)if(global.gameIsPaused){$(13_10)	instance_create_layer(x_for_pause, y_for_pause + 130, "UI", obj_resumebutton);$(13_10)	instance_create_layer(x_for_pause, y_for_pause + 200, "UI", obj_mainmenubutton);$(13_10)	//instance_create_layer(800, 500, "Instances", obj_resumebutton);$(13_10)	//instance_create_layer(800, 600, "Instances", obj_mainmenubutton);$(13_10)}"
var lay_id = layer_get_id("GameBackground");
var lay_idd = layer_get_id("Instances_1");
var back_id = layer_background_get_id(lay_id);
if(global.gameIsPaused == false) {
	var offset = 0;
	for(var i = 0; i < instance_count; i++){
		if(instance_find(all, i).sprite_index != -1) {
		allObjects[i-offset, 0] = instance_find(all,i).sprite_index;
		allObjects[i-offset,1] = instance_find(all,i).image_index;
		allObjects[i-offset,2] = instance_find(all,i).x;
		allObjects[i-offset,3] = instance_find(all,i).y;
		allObjects[i-offset,4] = instance_find(all,i).image_xscale;
		allObjects[i-offset,5] = instance_find(all,i).image_yscale;
		allObjects[i-offset,6] = instance_find(all,i).image_angle;
		allObjects[i-offset,7] = instance_find(all,i).image_blend;
		allObjects[i-offset,8] = instance_find(all,i).image_alpha;
		}
		else offset++;
	}
	var camera = view_get_camera(0);
	x_for_pause = camera_get_view_x(camera) + 355;
	y_for_pause = camera_get_view_y(camera);
	//x_for_pause = instance_find(obj_player, 0).x
	//y_for_pause = instance_find(obj_player, 0).y
	instance_deactivate_all(true);
	instance_activate_layer(lay_idd);
	instance_activate_object(obj_resumebutton);
	instance_activate_object(obj_mainmenubutton);
	layer_vspeed(lay_id,0);
	global.gameIsPaused = true;
} else {
	instance_activate_all();
	instance_destroy(obj_mainmenubutton)
	instance_destroy(obj_resumebutton)
	//instance_deactivate_object(obj_mainmenubutton);
	//instance_deactivate_object(obj_resumebutton);
	//instance_deactivate_object(obj_statusBar1);
	//instance_deactivate_object(obj_scoreabove);
	layer_vspeed(lay_id,1.5);
	global.gameIsPaused = false;
	allObjects = 0;
}

if(global.gameIsPaused){
	instance_create_layer(x_for_pause, y_for_pause + 130, "UI", obj_resumebutton);
	instance_create_layer(x_for_pause, y_for_pause + 200, "UI", obj_mainmenubutton);
	//instance_create_layer(800, 500, "Instances", obj_resumebutton);
	//instance_create_layer(800, 600, "Instances", obj_mainmenubutton);
}