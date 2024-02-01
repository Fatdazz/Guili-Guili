/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var angle = physics_joint_get_value(joint_select, phy_joint_angle)*180/pi;
physics_joint_set_value(joint_select, phy_joint_upper_angle_limit, angle+eps);
physics_joint_set_value(joint_select, phy_joint_lower_angle_limit, angle-eps);
physics_joint_set_value(joint_select, phy_joint_angle_limits, true);
physics_joint_set_value(joint_select, phy_joint_max_motor_torque, 0);

show_debug_message(angle)
