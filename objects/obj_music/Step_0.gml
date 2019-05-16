/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 1D1482C6
/// @DnDArgument : "var" "cr_rm"
cr_rm = room;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 41C767AA
/// @DnDArgument : "expr" "cr_rm"
var l41C767AA_0 = cr_rm;
switch(l41C767AA_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 417418C3
	/// @DnDParent : 41C767AA
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 56A60948
		/// @DnDParent : 417418C3
		/// @DnDArgument : "soundid" "snd_mmmusic"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "00477324-d62f-4752-bc27-be4ed8df8d1e"
		var l56A60948_0 = snd_mmmusic;
		if (!audio_is_playing(l56A60948_0))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 1394A40B
			/// @DnDParent : 56A60948
			/// @DnDArgument : "soundid" "snd_mmmusic"
			/// @DnDArgument : "loop" "1"
			/// @DnDSaveInfo : "soundid" "00477324-d62f-4752-bc27-be4ed8df8d1e"
			audio_play_sound(snd_mmmusic, 0, 1);
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3DD7EA45
	/// @DnDParent : 41C767AA
	/// @DnDArgument : "const" "rm_level_1"
	case rm_level_1:
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 24D42E3F
		/// @DnDParent : 3DD7EA45
		/// @DnDArgument : "soundid" "snd_schoolambient"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "c450e121-83d2-474c-b5b5-a40efed376fa"
		var l24D42E3F_0 = snd_schoolambient;
		if (!audio_is_playing(l24D42E3F_0))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 4F2A9B0C
			/// @DnDParent : 24D42E3F
			/// @DnDArgument : "soundid" "snd_schoolambient"
			/// @DnDArgument : "loop" "1"
			/// @DnDSaveInfo : "soundid" "c450e121-83d2-474c-b5b5-a40efed376fa"
			audio_play_sound(snd_schoolambient, 0, 1);
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5BE59474
	/// @DnDParent : 41C767AA
	/// @DnDArgument : "const" "rm_firstboss"
	case rm_firstboss:
		/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 3365C9C6
		/// @DnDParent : 5BE59474
		/// @DnDArgument : "soundid" "snd_gymambient"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "soundid" "c270eae3-cc7f-46a3-bad0-d7942ea2c550"
		var l3365C9C6_0 = snd_gymambient;
		if (!audio_is_playing(l3365C9C6_0))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 131CAC1E
			/// @DnDParent : 3365C9C6
			/// @DnDArgument : "soundid" "snd_gymambient"
			/// @DnDArgument : "loop" "1"
			/// @DnDSaveInfo : "soundid" "c270eae3-cc7f-46a3-bad0-d7942ea2c550"
			audio_play_sound(snd_gymambient, 0, 1);
		}
		break;
}