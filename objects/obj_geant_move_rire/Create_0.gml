event_inherited();




if(tache01 !=noone){
	
	var _inst = instance_create_depth(phy_position_x,phy_position_y,depth -1,tache01,{obj_IdMere:id})
	sprite_set_offset(tache01.sprite_index ,sprite_get_xoffset(sprite_index),sprite_get_yoffset(sprite_index));
	_inst.x = _inst.x + (sprite_get_xoffset(sprite_index)) * image_xscale  - (0.5*sprite_get_width(sprite_index))*image_xscale; 
	_inst.y = _inst.y + (sprite_get_yoffset(sprite_index)) * image_yscale -  (0.5*sprite_get_height(sprite_index))*image_yscale
	_inst.isMove = true
	_inst.image_xscale = image_xscale;
	_inst.image_yscale = image_yscale;
}
if(tache02!=noone){
	
	var _inst = instance_create_depth(phy_position_x,phy_position_y,depth -1,tache02,{obj_IdMere:id})
	sprite_set_offset(_inst.sprite_index ,sprite_get_xoffset(sprite_index),sprite_get_yoffset(sprite_index));
	_inst.x = _inst.x + sprite_get_xoffset(sprite_index) * image_xscale  - (0.5*sprite_get_width(sprite_index))*image_xscale
	_inst.y = _inst.y + sprite_get_yoffset(sprite_index) * image_yscale  - (0.5*sprite_get_height(sprite_index))*image_yscale
	_inst.isMove = true
	_inst.image_xscale = image_xscale;
	_inst.image_yscale = image_yscale;
	
	
}


phy_position_x = phy_position_x + sprite_get_xoffset(sprite_index)*image_xscale - (0.5*sprite_get_width(sprite_index))*image_xscale
phy_position_y = phy_position_y + sprite_get_yoffset(sprite_index)*image_yscale - (0.5*sprite_get_height(sprite_index))*image_yscale



var _curvestruct = animcurve_get(ani_moveCorp);

_channel = animcurve_get_channel(_curvestruct,"courbe1")

cont_anim_rire = 0;

angleInit_anim_rire = image_angle;
angleMax_anim_rire = angleMax_anim_rire - angleRand_anim_rire 
rand_anim_rire = random(angleRand_anim_rire) + angleMax_anim_rire ;
