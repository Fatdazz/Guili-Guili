/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
global.listRotule = array_create(4,noone);
global.listRotule[0] = id;
image_xscale = scale_print;
image_yscale = scale_print;
var _spr_truss = spr_truss
var _scale_truss = 0.5

var _rotule_x = x - sprite_width/2 + rotule_x; // position rotule sur moto
var _rotule_y = y - sprite_height/2 + rotule_y;
rotule_x =  -sprite_width/2 + rotule_x
rotule_y =  -sprite_height/2 + rotule_y


// calcule position next rotule 
var newX = sprite_get_height(_spr_truss)// + 2*sprite_get_height(str_joint_back)/3
newX = newX * _scale_truss

newX =  sprite_get_height(_spr_truss)* _scale_truss
newX = lengthdir_x(newX,45)
var newY =  sprite_get_height(_spr_truss)* _scale_truss
newY = lengthdir_y(newY,45)

// creation next rotule 
var rotule = instance_create_layer(_rotule_x + newX, _rotule_y + newY, layer,test_rotule, 
	{
		idRotule : idRotule+1,
		spr_print : _spr_truss,
		scale_print : _scale_truss,
		phy_rotation : -45,
		
	});
	
		
joint = physics_joint_revolute_create(id, rotule, _rotule_x , _rotule_y , 00, 0, true, 60000,-60000, true, false);

//physics_joint_set_value(joint, phy_joint_upper_angle_limit, 0);
//physics_joint_set_value(joint, phy_joint_lower_angle_limit, 0);
//physics_joint_set_value(joint, phy_joint_angle_limits, true);
var angle = physics_joint_get_value(joint, phy_joint_angle)*180/pi;
phy_speed_x = 0.0;

instance_create_layer(x,y,"Player02",obj_Player_02)