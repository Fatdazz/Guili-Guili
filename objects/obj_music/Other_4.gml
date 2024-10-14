/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
audio_play_sound(backtrack, 0, true)
audio_select = audio_play_sound(solo1, 0, false)
show_debug_message(string(global.isMusic))
if( not global.isMusic){
	audio_stop_all();
}
i = 1





