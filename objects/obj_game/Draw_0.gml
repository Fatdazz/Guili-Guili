/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var _rotule = global.listRotule[select_plyer1]

var angle = physics_joint_get_value(_rotule.joint, phy_joint_angle)*180/pi;

var _text = "angle select du player 1 : " + string(angle);

_text = "angleMax: " + string(_rotule.angleMax) + " angleMin: " + string(_rotule.angleMin)
		+ " angleSup: " + string(_rotule.angleSup) + " angleInf: " + string(_rotule.angleInf)
//draw_self()

draw_text(10,10,_text)
 _text = "phy_joint_upper_angle_limit: " + string(physics_joint_get_value(_rotule.joint, phy_joint_upper_angle_limit)) 
		+ "phy_joint_lower_angle_limit: " + string(physics_joint_get_value(_rotule.joint,phy_joint_lower_angle_limit));

draw_text(10,30,_text)
_text = "Angle de la rotule: " + string(physics_joint_get_value(_rotule.joint, phy_joint_angle))
draw_text(10,50,_text)