/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Joueur 1
//show_debug_message("alex " + string(timezone_local))
if (keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_shoulderl)){
	button_J1_pre = true
}
if (keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_shoulderr)){
	button_J1_next = true
}
if( keyboard_check(ord("S")) || gamepad_axis_value(0,gp_axislv) < -0.5){
	button_J1_down = true
}
if(keyboard_check_released(ord("S")))button_J1_down_r = true;

if( keyboard_check(ord("W")) || gamepad_axis_value(0,gp_axislv) > 0.5){
	button_J1_up = true
}
if(keyboard_check_released(ord("W"))) button_J1_up_r = true

if(  keyboard_check(ord("Z"))){
	button_J1_left = true;
}
if(  keyboard_check(ord("X"))){
	button_J1_right = true;
}

if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1)){
}

/// Joueur 2

if(keyboard_check_pressed(vk_right)){
	button_J2_next = true;
}
if(keyboard_check_pressed(vk_left)){
	button_J2_pre = true
}
if(keyboard_check_pressed(vk_enter)){
	button_J2_serrage = true	
}