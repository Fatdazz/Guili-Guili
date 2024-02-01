/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

//
physics_joint_set_value(joint_select, phy_joint_angle_limits, false);
physics_joint_set_value(joint_select, phy_joint_max_motor_torque, torque_ref);
physics_joint_set_value(joint_select, phy_joint_motor_speed, speed_ref);

