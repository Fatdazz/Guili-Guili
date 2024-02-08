/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

// Joueur 1
//show_debug_message("alex " + string(timezone_local))
if (keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_padl)){
	button_J1_pre = true
}
if (keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_padr)){
	button_J1_next = true
}
if( keyboard_check(ord("S")) || gamepad_button_check_pressed(0,gp_padd)){
	button_J1_down = true
}
if(keyboard_check_released(ord("S")) || gamepad_button_check_released(0,gp_padd))button_J1_down_r = true;

if( keyboard_check(ord("W")) || gamepad_button_check_pressed(0,gp_padu)){
	button_J1_up = true
}
if(keyboard_check_released(ord("W")) || gamepad_button_check_released(0,gp_padu)) button_J1_up_r = true

if(  keyboard_check(ord("Z")) || gamepad_axis_value(0,gp_axislh) < -0.5){
	button_J1_left = true;
}
if(  keyboard_check(ord("X")) || gamepad_axis_value(0,gp_axislh) > 0.5){
	button_J1_right = true;
}

if(keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1)){
}

/// Joueur 2

if(keyboard_check_pressed(vk_right) || gamepad_axis_value(0,gp_axisrh) > 0.5){
	button_J2_next = true;
}
if(keyboard_check_pressed(vk_left) || gamepad_axis_value(0,gp_axisrh) < -0.5){
	button_J2_pre = true
}
if(keyboard_check_pressed(vk_enter) ||  gamepad_button_check_pressed(0,gp_face1) ||  gamepad_button_check_pressed(0,gp_face2) ){
	button_J2_serrage = true	
}