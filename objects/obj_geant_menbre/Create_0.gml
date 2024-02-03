/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
depth = depth_info // regarde ici pour integation dans hgame 
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
	

	instance_create_depth(x,y,-1,tache01)
}
if(!move and tache02!=noone){
	
	instance_create_depth(x,y,depth -1,tache02)

}

show_debug_message("depth membre :  " + string(depth))