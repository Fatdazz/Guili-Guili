/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(isMove) image_angle = obj_IdMere.image_angle;

if(gauge>0){
	
	var _valeur = animcurve_channel_evaluate(_channel, gauge/gaugeMax);
	var _c = c_white;
	if((alarm[0] < 160) and isclignio) _c = c_red
	draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,_c,_valeur);

}
