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
	global.sang_01  = part_system_create(Part_sang)
	//part_system_depth(part,_obj.depth -1)
	part_system_depth(global.sang_01,_obj.depth + 20)
	//_obj = instance_find(obj_jambe_droite_tache,0)
	
	part_system_position(global.sang_01,1560,1041)
	
	
	global.game.coef_addGauge = 1.9; 
	
}

function etape_02(){
	idEtape = 2;
	var _obj=  instance_find(obj_geant_main_g,0)

	with(_obj){
	image_angle = 0;
	phy_speed_x = random_range(-45, 45);
	phy_speed_y = -random_range(50,70);
	dead = true
	}
	global.sang_02 = part_system_create(Part_sang)
	part_system_depth(global.sang_02,_obj.depth + 20)
	part_system_position(global.sang_02,2215,729)
	
	
	global.game.coef_addGauge = 1.5;
	
}	

function etape_03(){
	idEtape = 3;
	for(var i = 0; i < instance_number(obj_geant_menbre);i++){
		var _obj = instance_find(obj_geant_menbre,i)
		_obj.image_angle = 0;
		_obj.phy_speed_x = random_range(-45, 45);
		_obj.phy_speed_y = -random_range(50,70);
		_obj.dead = true
	}	
	
	part_system_destroy(global.sang_01)
	part_system_destroy(global.sang_02)
	global.game.coef_addGauge = 0;
}	
