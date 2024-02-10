/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var _channel = animcurve_get_channel(curveRotule,"Delect_gauge");
var i = animcurve_channel_evaluate(_channel,gauge/gaugeMax);

gauge = max(0,min(gauge,gaugeMax) - i*0.1);

