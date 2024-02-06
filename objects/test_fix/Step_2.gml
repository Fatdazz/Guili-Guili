/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur



var _valeur = animcurve_channel_evaluate(_channel, cont_vibration);

//y = y - 20*_valeur;
phy_position_y = phy_position_y + 5*_valeur;
