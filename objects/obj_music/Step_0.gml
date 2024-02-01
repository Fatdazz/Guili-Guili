/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(not audio_is_playing(audio_select)){
	i= i+1
    if(i%4 == 1)
    {
        audio_select = audio_play_sound(solo1, 0, false)
    }
    else if(i%4 == 2)
    {
        audio_select = audio_play_sound(solo2, 0, false)
    }
    else if(i%4 == 3)
    {
        audio_select = audio_play_sound(solo3, 0, false)
    }
    else
    {
        audio_select = audio_play_sound(solo4, 0, false)
    }
}





