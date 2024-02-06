// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function fct_draw_rotuleAngle(){
	var _x = x + rotule_x
	var _y = y + rotule_y
	//angleMax
	
	var _rotuleOther 
	if(idRotule == 3){
		_rotuleOther = instance_find(test_main,0);
	}
	else{ _rotuleOther = global.listRotule[idRotule +1]}
	
	//var _angle = -angleMax - _rotuleOther.image_angle - physics_joint_get_value(self.joint, phy_joint_angle)*180/pi
	var _angle = _rotuleOther.image_angle - angleMax
	
	
	var _maxX = lengthdir_x(80,-_rotuleOther.ange_init - angleMax + (image_angle + ange_init )) +_x
	var _maxY = lengthdir_y(80,-_rotuleOther.ange_init - angleMax + (image_angle + ange_init )) +_y
	draw_set_color(c_blue);
	draw_arrow(_x,_y,_maxX,_maxY,10)
	draw_set_color(c_white)	
	draw_text(1050, 20*idRotule + 10, "id:" + string(idRotule) + " angleMax: " + string(angleMax) + + " angleMin: " + string(angleMin))
	
	var _minX = lengthdir_x(80,-_rotuleOther.ange_init - angleMin + (image_angle + ange_init ) ) +_x // bug je pence 
	var _minY = lengthdir_y(80,-_rotuleOther.ange_init - angleMin + (image_angle + ange_init ) ) +_y
	
	draw_set_color(c_purple);
	draw_arrow(_x,_y,_minX,_minY,10)
	draw_set_color(c_white)	
	
	
	var _Xd = lengthdir_x(120,_rotuleOther.image_angle) +_x
	var _Yd = lengthdir_y(120,_rotuleOther.image_angle) + _y
	draw_set_color(c_red);
	draw_arrow(_x,_y,_Xd,_Yd,10)
	draw_set_color(c_white)	
	
	
	if(self.idRotule != 3){
	var _phyAngle = physics_joint_get_value(self.joint, phy_joint_angle)*180/pi
	if(self.idRotule == global.listRotule[global.game.select_plyer1].idRotule) draw_set_color(c_red)
	
	draw_text(1050, 20*idRotule + 100, "image_angle:" + string(self.image_angle) + "phyAngle:" + string(_phyAngle))
	var _phyAngle = physics_joint_get_value(_rotuleOther.joint, phy_joint_angle)*180/pi
	draw_text(1050, 20*idRotule + 200, "image_angleOther:" + string(_rotuleOther.image_angle) + "phyAngleOther:" + string(_phyAngle))
	draw_text(1050, 20*idRotule + 300, "image_ange:" + string(image_angle) + "image_init:" + string(ange_init))
	

	draw_set_color(c_white)
	}
}