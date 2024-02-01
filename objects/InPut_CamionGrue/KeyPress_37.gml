/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if(joint_select == camion.joint)
{
	exit;
}

var angle = physics_joint_get_value(joint_select, phy_joint_angle)*180/pi;
physics_joint_set_value(joint_select, phy_joint_angle_limits, true);
physics_joint_set_value(joint_select, phy_joint_upper_angle_limit, angle+eps);
physics_joint_set_value(joint_select, phy_joint_lower_angle_limit, angle-eps);
speed_ref = speed_ref*div_force
torque_ref = torque_ref*div_force

if(joint_select == bras_long.joint)
{
	joint_select = camion.joint;
}
else if(joint_select == bras_moyen.joint)
{
	joint_select = bras_long.joint;
}
else if(joint_select == bras_court.joint)
{
	joint_select = bras_moyen.joint;
}
