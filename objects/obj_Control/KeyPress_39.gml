/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
/*
if(global.jointSelect == global.joint1)
{
	exit;
}

var angle = physics_joint_get_value(global.jointSelect, phy_joint_angle)*180/pi;
physics_joint_set_value(global.jointSelect, phy_joint_angle_limits, true);
physics_joint_set_value(global.jointSelect, phy_joint_upper_angle_limit, angle+eps);
physics_joint_set_value(global.jointSelect, phy_joint_lower_angle_limit, angle-eps);


if(global.jointSelect == global.joint2)
{
	global.jointSelect = global.joint1;
}
else if(global.jointSelect == global.joint3)
{
	global.jointSelect = global.joint2;
}

