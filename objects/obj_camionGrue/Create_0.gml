/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

/*
var fixture = physics_fixture_create();
physics_fixture_set_box_shape(fixture, sprite_width/2,sprite_height/2);
physics_fixture_set_density(fixture, 0);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_linear_damping(fixture, 0.6);
physics_fixture_set_angular_damping(fixture, 0.6);
physics_fixture_set_friction(fixture, 0.2);
physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);*/

var center_axe_x = 454 - 295
var center_axe_y = 97 - 171

var newX = lengthdir_x(sprite_get_height(spr_truss_long),0)//30
var newY = lengthdir_y(sprite_get_height(spr_truss_long),0)
var instB = instance_create_layer(newX + x + center_axe_x , newY + y + center_axe_y, layer, obj_truss_long,
		{
			image_xscale : 1,
			image_yscale : 1,
			phy_rotation: 90// 60
		});


joint = physics_joint_revolute_create(id, instB, x + center_axe_x, y + center_axe_y, 0, 0, false, torque_ref, speed_ref, true, false);
var angle = physics_joint_get_value(joint, phy_joint_angle)*180/pi;
physics_joint_set_value(joint, phy_joint_upper_angle_limit, angle);
physics_joint_set_value(joint, phy_joint_lower_angle_limit, angle);
physics_joint_set_value(joint, phy_joint_angle_limits, true);
//show_debug_message(angle)



var instc = instance_create_layer(x , y, layer, obj_truss_joint,
	{
		image_mere : id,
	});


