/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(fps>50) cont_vibration =  cont_vibration + 0.9/60  /// 1.5 speed de n'anime
	if cont_vibration > 1 {  
		cont_vibration = cont_vibration mod 1; // en boucle 
		
}

var _valeur = animcurve_channel_evaluate(_channel, cont_vibration);
//sign(animcurve_channel_evaluate(_channel, cont_vibration + 1/fps) - animcurve_channel_evaluate(_channel, cont_vibration))
//sign(animcurve_channel_evaluate(_channel, cont_vibration ) - animcurve_channel_evaluate(_channel, cont_vibration - 1/fps))

if(	sign(animcurve_channel_evaluate(_channel, cont_vibration + 1/fps) - animcurve_channel_evaluate(_channel, cont_vibration)) != 
	sign(animcurve_channel_evaluate(_channel, cont_vibration ) - animcurve_channel_evaluate(_channel, cont_vibration - 1/fps))
	){
		
	draw_text(1000, 1000, string(sign(animcurve_channel_evaluate(_channel, cont_vibration + 1/fps) - animcurve_channel_evaluate(_channel, cont_vibration))))	
	}
//y = y + 20*_valeur;
phy_position_y = phy_position_y - 5*_valeur;