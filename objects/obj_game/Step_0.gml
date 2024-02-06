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

var _player01  = instance_find(test_fix,0)
if(global.input.button_J1_right){
		_player01.phy_speed_x = 5 ;
}
if(global.input.button_J1_left){
		_player01.phy_speed_x = -5 ;
}

var _player02  = instance_find(obj_Player_02,0)
if(not _player02.isMove  and global.input.button_J2_next and not global.input.button_J2_pre and select_plyer2 !=3){
	
	_player02.isMove = true;
	_player02.isNext = true;
	_player02.isPre = false;
	_player02.alarm[0] = _player02.t;
}
if(not _player02.isMove  and not global.input.button_J2_next and global.input.button_J2_pre and select_plyer2 !=0 ){
	_player02.isMove = true;
	_player02.isNext = false;
	_player02.isPre = true;
	_player02.alarm[1] = _player02.t;
}


if(global.input.button_J2_serrage and not _player02.isMove){
	
	if(alarm[0] == -1 ){
	show_debug_message("Alarm off + 3pt")
		global.listRotule[select_plyer2].gauge = global.listRotule[select_plyer2].gauge + 2
	
	}
	else{
		var _curvestruct = animcurve_get(ani_rotule);
		var _channel = animcurve_get_channel(_curvestruct,"add_gauge");
		var i = animcurve_channel_evaluate(_channel, alarm[0]/50)/5;
		addGauge = i;
		global.listRotule[select_plyer2].gauge = global.listRotule[select_plyer2].gauge + i
	}
	
	
	alarm[0] = 50;
}
