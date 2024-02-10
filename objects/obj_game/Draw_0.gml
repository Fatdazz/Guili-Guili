/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var _rotule = global.listRotule[select_plyer1]

var angle = physics_joint_get_value(_rotule.joint, phy_joint_angle)*180/pi;

if (global.debug){ 
draw_set_color(c_aqua)
var moyen= 0;
for(var i = 0; i < array_length(moyen_touch);i++){
		moyen = moyen +  moyen_touch[i];
}
draw_text(5, 5 ,moyen)
draw_set_color(c_white)
var _text = "angle select du player 1 : " + string(angle);

_text = "angleMax: " + string(_rotule.angleMax) + " angleMin: " + string(_rotule.angleMin)
		+ " angleSup: " + string(_rotule.angleSup) + " angleInf: " + string(_rotule.angleInf)
//draw_self()
//draw_text(10,10,_text)
//draw_text(10, 5 , " ===== Info Box 2d ====")
draw_text(10, 20 , "  ==== Moteur === ")
_text = "phy_joint_max_motor_force: " + string(physics_joint_get_value(_rotule.joint, phy_joint_max_motor_force))
draw_text(10,40,_text)
_text = "phy_joint_max_motor_torque: " + string(physics_joint_get_value(_rotule.joint, phy_joint_max_motor_torque))
draw_text(10,60,_text)
_text = "phy_joint_motor_force: " + string(physics_joint_get_value(_rotule.joint, phy_joint_upper_angle_limit))
draw_text(10,80,_text)
_text = "phy_joint_motor_speed: " + string(physics_joint_get_value(_rotule.joint, phy_joint_motor_speed))
draw_text(10,100,_text)
_text = "phy_joint_motor_torque: " + string(physics_joint_get_value(_rotule.joint, phy_joint_motor_torque))
draw_text(10,120, _text)
draw_text(10, 140 , "  ==== General === ")

_text = "phy_joint_angle: " + string(physics_joint_get_value(_rotule.joint, phy_joint_angle))
draw_text(10,160,_text)

_text = "phy_joint_reaction_force_x: " + string(physics_joint_get_value(_rotule.joint, phy_joint_reaction_force_x))
draw_text(10,180,_text)
_text = "phy_joint_reaction_force_y: " + string(physics_joint_get_value(_rotule.joint, phy_joint_reaction_force_y))
draw_text(10,200,_text)
_text = "phy_joint_reaction_torque: " + string(physics_joint_get_value(_rotule.joint, phy_joint_reaction_torque	))
draw_text(10,220,_text)


draw_text(10, 260 , " ===== Gauge ====")

for(var i = 0; i < array_length(global.listRotule); i++){
	_rotule = global.listRotule[i]
	if(global.listRotule[i] == global.listRotule[select_plyer2])
	{
	_text = "rotule " + string(_rotule.idRotule) + " Gauge: " +  string(_rotule.gauge);
	draw_text(10,280 + i*20,_text)
	draw_set_color(c_red)
	draw_text(215, 280 + i*20,"addGauge: " + string(addGauge) + "tape/s: "+string(60/(60 -alarm[0])))
	draw_set_color(c_white)
	}
	else{
	_text = "rotule " + string(_rotule.idRotule) + " Gauge: " +  string(_rotule.gauge);
	draw_text(10,280 + i*20,_text)
	}
	
}

}

/* _text = "phy_joint_upper_angle_limit: " + string(physics_joint_get_value(_rotule.joint, phy_joint_upper_angle_limit)) 
		+ "phy_joint_lower_angle_limit: " + string(physics_joint_get_value(_rotule.joint,phy_joint_lower_angle_limit));

draw_text(10,30,_text)
_text = "Angle de la rotule: " + string(physics_joint_get_value(_rotule.joint, phy_joint_angle))
draw_text(10,50,_text)*/