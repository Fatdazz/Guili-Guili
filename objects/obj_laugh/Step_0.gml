/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if(flag and not global.ok)
{
	audio_play_sound(giant_laugh, 0, false)
	flag = false
}

if(not flag and  global.ok)
{
	audio_stop_sound(giant_laugh)
	flag = true
}
