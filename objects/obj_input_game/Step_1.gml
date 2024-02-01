/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Joueur 1

if (keyboard_check_pressed(ord("a")) || gamepad_button_check_pressed(0,gp_shoulderl)){
	
}
if (keyboard_check_pressed(ord("d")) || gamepad_button_check_pressed(0,gp_shoulderr)){
	
}

if( keyboard_check_pressed(ord("s")) || gamepad_axis_value(0,gp_axislv) < -0.5){
}

if( keyboard_check_pressed(ord("w")) || gamepad_axis_value(0,gp_axislv) > 0.5){
}

if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1)){

}

/// Joueur 2

if(keyboard_check_pressed(vk_right)){}
if(keyboard_check_pressed(vk_left)){}
