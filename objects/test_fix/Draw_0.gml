/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur



render_flags = phy_debug_render_shapes | phy_debug_render_joints | phy_debug_render_coms | phy_debug_render_obb;
//physics_world_draw_debug(render_flags);


draw_text(10,30, "joint_reaction_force_x - y: " + string(physics_joint_get_value(joint, phy_joint_reaction_force_x ) ) + " - " + string(physics_joint_get_value(joint, phy_joint_reaction_force_x ) ) );
draw_text(10,50, "phy_joint_reaction_torque: " + string(physics_joint_get_value(joint,phy_joint_reaction_torque)));
draw_text(10,70, "phy_joint_max_motor_force: " + string(physics_joint_get_value(joint,phy_joint_max_motor_force)));
draw_text(10,90, "phy_joint_max_motor_torque: " + string(physics_joint_get_value(joint,phy_joint_max_motor_torque)));
draw_text(10,110, "phy_joint_motor_force	: " + string(physics_joint_get_value(joint,phy_joint_motor_force	)));
draw_text(10,130, "phy_joint_motor_speed	: " + string(physics_joint_get_value(joint,phy_joint_motor_speed	)));
draw_text(10,150, "phy_joint_motor_torque	: " + string(physics_joint_get_value(joint,phy_joint_motor_torque	)));


draw_text(700,30, "phy_joint_angle de "+ string(0) + " : " + string(physics_joint_get_value(id.joint,image_angle) *180/pi));
for(var i= 0; i < instance_number(test_rotule)-1; i +=1){
	var _temp = instance_find(test_rotule,i);
	draw_text(700,30+20*(i+1), "phy_joint_angle de "+ string(i+1) + " : " + string(physics_joint_get_value(_temp.joint,phy_joint_angle) *180/pi));
	
}

draw_text(1300,30, "phy_rotation de "+ string(0) + " : " + string(phy_rotation));
for(var i= 0; i < instance_number(test_rotule); i +=1){
	var _temp = instance_find(test_rotule,i);
	draw_text(1300,30+20*(i+1), "phy_rotation de "+ string(i+1) + " : " + string(_temp.phy_rotation));
	
}


//draw_sprite_ext(spr_1px,0,x,y,164/2,4,-physics_joint_get_value(id.joint,phy_joint_angle) *180/pi, c_white,1);

draw_sprite_ext(str_joint_back,0,x,y,1,1,image_angle,c_white,1);