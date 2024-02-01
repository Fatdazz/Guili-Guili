
var newX = lengthdir_x(sprite_get_height(spr_main_1),10)
var newY = lengthdir_y(sprite_get_height(spr_main_1),10)
var instB = instance_create_layer(newX + x , newY + y, layer, obj_main);


instB.image_xscale = 1
instB.image_yscale = 1
instB.image_angle = 91

joint = physics_joint_revolute_create(id, instB, x, y, -90, -90, true, 0, 0, true, false);

var instc = instance_create_layer(100 , 1999 + y, layer, obj_truss_joint);

with(instc){
	image_xscale = other.scale_im
	image_yscale = other.scale_im
	image_mere = other.id
}