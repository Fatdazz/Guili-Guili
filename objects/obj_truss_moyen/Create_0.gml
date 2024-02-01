
var newX = lengthdir_x(sprite_get_height(spr_truss_moyen)*scale_im,-50)
var newY = lengthdir_y(sprite_get_height(spr_truss_moyen)*scale_im,-50)
var instB = instance_create_layer(newX + x , newY + y, layer, obj_truss_court);

instB.image_xscale = scale_im
instB.image_yscale = scale_im
instB.phy_rotation = 140

joint = physics_joint_revolute_create(id, instB, x, y, 0, 0, true, torque_ref, speed_ref, true, false);

var instc = instance_create_layer(100 , 1999 + y, layer, obj_truss_joint);

with(instc){
	image_xscale = other.scale_im
	image_yscale = other.scale_im
	image_mere = other.id
}