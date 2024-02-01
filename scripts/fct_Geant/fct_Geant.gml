// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function create_membre_geant(_spr,_obj){
	var _inst = instance_create_layer(x + sprite_get_xoffset(_spr)*image_xscale ,y + sprite_get_yoffset(_spr)*image_yscale,
	"Geant",_obj)

	with(_inst){
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
	}
}