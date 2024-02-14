/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur




var _obj=  instance_find(obj_geant_pied_d,0)

with(_obj){
	image_angle = 0;
	phy_speed_x = random_range(-45, 45);
	phy_speed_y = -random_range(50,70);
	dead = true
}
var part = part_system_create(Part_sang)

_obj = instance_find(obj_jambe_droite_tache,0)
 part_system_depth(part,_obj.depth + 20)

 part_system_position(part,1552,994)