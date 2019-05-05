/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 72FDB4C3
/// @DnDArgument : "xpos" "-55"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-80"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_player_otjimania"
/// @DnDSaveInfo : "objectid" "2a46c508-1a23-47d5-a0de-9e657e3f8149"
instance_create_layer(x + -55, y + -80, "Instances", obj_player_otjimania);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42FEFF74
/// @DnDArgument : "code" "self.sprite_index=spr_boss_otjimania;$(13_10)y-=80;$(13_10)instance_deactivate_object(obj_player);"
self.sprite_index=spr_boss_otjimania;
y-=80;
instance_deactivate_object(obj_player);