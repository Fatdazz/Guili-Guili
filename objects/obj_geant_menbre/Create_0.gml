/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
var _num  = instance_number(obj_geant_full)
for(var i = 0; i < _num; i++){
	
	var inst = instance_find(obj_geant_full,i);
	x = inst.x
	y = inst.y
	image_angle = inst.image_angle
	image_xscale = inst.image_xscale
	image_yscale = inst.image_yscale
	
}
if(!move and tache01!=noone){
	
	instance_create_layer(x,y,"Tache",tache01)
}
if(!move and tache02!=noone){
	
	instance_create_layer(x,y,"Tache",tache02)

}