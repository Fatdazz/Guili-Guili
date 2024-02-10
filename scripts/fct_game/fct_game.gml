// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function etape_01(){
	idEtape = 1;
	var _obj=  instance_find(obj_geant_pied_d,0)

	with(_obj){
	image_angle = 0;
	phy_speed_x = random_range(-45, 45);
	phy_speed_y = -random_range(50,70);
	dead = true
	}
	var part = part_system_create(Part_sang)
	_obj = instance_find(obj_jambe_droite_tache,0)
	part_system_position(part,1552,994)
	
	global.game.coef_addGauge = 2; 
	
}

function etape_02(){
	var _obj=  instance_find(obj_geant_pied_d,0)

	with(_obj){
	image_angle = 0;
	phy_speed_x = random_range(-45, 45);
	phy_speed_y = -random_range(50,70);
	dead = true
	}
	var part = part_system_create(Part_sang)
	_obj = instance_find(obj_jambe_droite_tache,0)
	part_system_position(part,1552,994)
	
	
	global.game.coef_addGauge = 1.7;
	
}	

function etape_03(){

	for(var i = 0; i < instance_number(obj_geant_menbre);i++){
		var _obj = instance_find(obj_geant_menbre,i)
		_obj.image_angle = 0;
		_obj.phy_speed_x = random_range(-45, 45);
		_obj.phy_speed_y = -random_range(50,70);
		_obj.dead = true
	}	
	
	global.game.coef_addGauge = 0;
}	
