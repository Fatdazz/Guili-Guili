// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function infoJoint()  constructor {
	id_obj = noone;
	id_join = noone;
	speedJoint = 100;
	angleMin = 0;
	angleStop = 0;
	angleMax = 0;
	isSelect = false;
	static init_jointPhys = function(_angleMin,_angleMax,_angleStop,_speedJoint){
			angleMin = _angleMin 
			angleMax = _angleMax
			angleStop = _angleStop
			speedJoint = _speedJoint
	}
} 