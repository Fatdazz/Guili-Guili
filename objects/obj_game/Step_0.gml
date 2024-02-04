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
	physics_joint_set_value(_rotule.joint, phy_joint_upper_angle_limit, _rotule.angleMax);
	physics_joint_set_value(_rotule.joint, phy_joint_lower_angle_limit, _rotule.angleMin);
	physics_joint_enable_motor(_rotule.joint, true)
	physics_joint_set_value(_rotule.joint, phy_joint_max_motor_torque, 3000);
	physics_joint_set_value(_rotule.joint, phy_joint_motor_speed, 1000);
	
	
}
if(global.input.button_J1_down_r) 
 {
	var _rotule = global.listRotule[select_plyer1]
	var _angle = physics_joint_get_value(_rotule.joint, phy_joint_angle)*180/pi;
	physics_joint_enable_motor(_rotule.joint, false)
	physics_joint_set_value(_rotule.joint, phy_joint_upper_angle_limit, _angle + 0.1);
	physics_joint_set_value(_rotule.joint, phy_joint_lower_angle_limit, _angle - 1);
		

	//physics_joint_set_value(_temp.joint, phy_joint_upper_angle_limit, angle); // mettreun jeux pour amortir choque 
	//physics_joint_set_value(_temp.joint, phy_joint_lower_angle_limit,angle - 0.1);
	
	
	//physics_joint_set_value(_temp.joint, phy_joint_angle_limits, true);
	//physics_joint_set_value(_temp.joint, phy_joint_max_motor_torque, 0);
}
	

if(not global.input.button_J1_down and global.input.button_J1_up){
	
	var _rotule = global.listRotule[select_plyer1]
	physics_joint_set_value(_rotule.joint, phy_joint_upper_angle_limit, _rotule.angleMax);
	physics_joint_set_value(_rotule.joint, phy_joint_lower_angle_limit, _rotule.angleMin);
	physics_joint_enable_motor(_rotule.joint, true)
	physics_joint_set_value(_rotule.joint, phy_joint_max_motor_torque, 3000);
	physics_joint_set_value(_rotule.joint, phy_joint_motor_speed, -1000);
	
}
if(global.input.button_J1_up_r) 
 {
	var _rotule = global.listRotule[select_plyer1]
	var _angle = physics_joint_get_value(_rotule.joint, phy_joint_angle)*180/pi;
	physics_joint_enable_motor(_rotule.joint, false)
	physics_joint_set_value(_rotule.joint, phy_joint_upper_angle_limit, _angle + 0.1);
	physics_joint_set_value(_rotule.joint, phy_joint_lower_angle_limit, _angle - 1);
		
}