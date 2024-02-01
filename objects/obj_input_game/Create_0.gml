/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
{
    if gamepad_is_connected(i) gp[i] = true else gp[i] = false;
	show_debug_message( "i : " + string(i) + " => " + string(gp[i]) )

}
