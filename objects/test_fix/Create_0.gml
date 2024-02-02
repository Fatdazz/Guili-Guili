/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
global.listRotule = array_create(4,noone);
global.listRotule[0] = id;
var _spr_print = spr_truss
var _scale_print = 0.5

var newX = sprite_get_height(_spr_print)// + 2*sprite_get_height(str_joint_back)/3
newX = newX * _scale_print
var rotule = instance_create_layer(x + newX, y , layer,test_rotule, 
	{
		idRotule : idRotule+1,
		spr_print : _spr_print,
		scale_print : _scale_print,
		
	});
	
		
joint = physics_joint_revolute_create(id, rotule, x , y , -10, 10, true, 0, 0, true, false);

//physics_joint_set_value(joint, phy_joint_upper_angle_limit, 0);
//physics_joint_set_value(joint, phy_joint_lower_angle_limit, 0);
//physics_joint_set_value(joint, phy_joint_angle_limits, true);
var angle = physics_joint_get_value(joint, phy_joint_angle)*180/pi;
phy_speed_x = 0.0;

instance_create_layer(x,y,"Player02",obj_Player_02)