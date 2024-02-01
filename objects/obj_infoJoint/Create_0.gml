/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


var newX = lengthdir_x(sprite_get_height(spr_suite)*scale_im,0)
var newY = lengthdir_y(sprite_get_height(spr_suite)*scale_im,0)
var _suit = instance_create_layer(newX + x , newY + y, layer, obj_truss_moyen);

_suit.image_xscale = scale_im
_suit.image_yscale = scale_im
_suit.phy_rotation = phy_rotation_suit

joint = physics_joint_revolute_create(id, _suit, x, y, 0, 0, true, torque_ref, speed_ref, true, false);


var _joint = instance_create_layer(100 , 1999 + y, layer, obj_truss_joint);

with(_joint){
	image_xscale = other.scale_im
	image_yscale = other.scale_im
	image_mere = other.id
}