/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7B384DF9
/// @DnDArgument : "code" "if(file_exists("Save.sav")){$(13_10)	file_delete("Save.sav");$(13_10)}$(13_10)var saveFile = file_text_open_write("Save.sav");$(13_10)var savedRoom = room;$(13_10)file_text_write_real(saveFile, savedRoom);$(13_10)file_text_close(saveFile);"
if(file_exists("Save.sav")){
	file_delete("Save.sav");
}
var saveFile = file_text_open_write("Save.sav");
var savedRoom = room;
file_text_write_real(saveFile, savedRoom);
file_text_close(saveFile);