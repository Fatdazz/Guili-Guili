/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if(global.input.button_J1_pre and not global.input.button_J1_next and select_plyer1 !=0){
	
	select_plyer1 = select_plyer1 - 1
}

if(not global.input.button_J1_pre and  global.input.button_J1_next and select_plyer1 !=3){
	select_plyer1 = select_plyer1 + 1
}
if(global.input.button_J1_down and not global.input.button_J1_up){
	var _rotule = global.listRotule[select_plyer1]
	//physics_joint_set_value(_temp.joint, phy_joint_max_motor_torque, 70000);
	//physics_joint_set_value(_temp.joint, phy_joint_motor_speed, -1000000000);
	
	physics_joint_set_value(_rotule.joint, phy_joint_upper_angle_limit, _rotule.angleMin);
	physics_joint_set_value(_rotule.joint, phy_joint_lower_angle_limit, _rotule.angleMax);
	
}
if(global.input.button_J1_down_r) 
 {
	var _temp = global.listRotule[select_plyer1]
	var angle = physics_joint_get_value(_temp.joint, phy_joint_angle)*180/pi;
	physics_joint_set_value(_temp.joint, phy_joint_upper_angle_limit, angle);
	physics_joint_set_value(_temp.joint, phy_joint_lower_angle_limit,angle);
	//physics_joint_set_value(_temp.joint, phy_joint_angle_limits, true);
	physics_joint_set_value(_temp.joint, phy_joint_max_motor_torque, 0);
}
	

if(not global.input.button_J1_down and global.input.button_J1_up){

}
