event_inherited();
global.ok = false



if(tache01 !=noone){
	
	var _inst = instance_create_depth(x,y,depth -1,tache01)
	sprite_set_offset(tache01.sprite_index ,sprite_get_xoffset(sprite_index),sprite_get_yoffset(sprite_index));
	_inst.x = _inst.x + sprite_get_xoffset(sprite_index)
	_inst.y = _inst.y + sprite_get_yoffset(sprite_index)
	_inst.obj_IdMere = id
	_inst.isMove = true
}
if(tache02!=noone){
	
	var _inst = instance_create_depth(x,y,depth -1,tache02)
	sprite_set_offset(_inst.sprite_index ,sprite_get_xoffset(sprite_index),sprite_get_yoffset(sprite_index));
	_inst.x = _inst.x + sprite_get_xoffset(sprite_index)
	_inst.y = _inst.y + sprite_get_yoffset(sprite_index)
	_inst.obj_IdMere = id
	_inst.isMove = true
	
	
}

x = x + sprite_get_xoffset(sprite_index)
y = y + sprite_get_yoffset(sprite_index)



var _curvestruct = animcurve_get(ani_moveCorp);

_channel = animcurve_get_channel(_curvestruct,"Jambe")

cont_anim_rire = 0;

angleInit_anim_rire = image_angle;
angleMax_anim_rire = angleMax_anim_rire - angleRand_anim_rire 
rand_anim_rire = random(angleRand_anim_rire) + angleMax_anim_rire ;
