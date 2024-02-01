

if(global.ok != true){
cont_anim_rire =  cont_anim_rire + 1.5/fps  /// 1.5 speed de n'anime
if cont_anim_rire > 1 {
	rand_anim_rire = random(angleRand_anim_rire) + angleMax_anim_rire ;  
	cont_anim_rire = 	cont_anim_rire mod 1; // en boucle 	
}



var _valeur = animcurve_channel_evaluate(_channel, cont_anim_rire);
//show_debug_message(sprite_get_xoffset(sprite_index));

image_angle = angleInit_anim_rire + rand_anim_rire * _valeur; }
