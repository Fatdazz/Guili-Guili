/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var render_flags = phy_debug_render_shapes | phy_debug_render_joints | phy_debug_render_coms | phy_debug_render_obb;

physics_world_draw_debug(render_flags);

draw_text(10,10, "moto");
draw_text(10,30, "joint_reaction_force_x - y: " + string(physics_joint_get_value(joint, phy_joint_reaction_force_x ) ) + " - " + string(physics_joint_get_value(joint, phy_joint_reaction_force_x ) ) );
draw_text(10,50, "phy_joint_reaction_torque: " + string(physics_joint_get_value(joint,phy_joint_reaction_torque)));
draw_text(10,70, "phy_joint_max_motor_force: " + string(physics_joint_get_value(joint,phy_joint_max_motor_force)));
draw_text(10,90, "phy_joint_max_motor_torque: " + string(physics_joint_get_value(joint,phy_joint_max_motor_torque)));
draw_text(10,110, "phy_joint_motor_force	: " + string(physics_joint_get_value(joint,phy_joint_motor_force	)));
draw_text(10,130, "phy_joint_motor_speed	: " + string(physics_joint_get_value(joint,phy_joint_motor_speed	)));
draw_text(10,150, "phy_joint_motor_torque	: " + string(physics_joint_get_value(joint,phy_joint_motor_torque	)));




