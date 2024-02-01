/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var _temp = instance_find(test_rotule,1) 
physics_joint_set_value(_temp.joint, phy_joint_max_motor_torque, 7000);
physics_joint_set_value(_temp.joint, phy_joint_motor_speed, -10000);