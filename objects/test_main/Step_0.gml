/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur



var _obj = instance_place(x,y,obj_tache)
if (_obj != noone and _obj.gauge > 0){
	
	global.ok = true;
	
	_obj.gauge = _obj.gauge - 1;
	global.game.gaugeGeant = global.game.gaugeGeant + 1;
}else{
	global.ok = false;	
}