/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
global.listRotule[idRotule] = id;
joint = noone;
phy_fixed_rotation = false;
image_angle = 90
sprite_index = spr_print;
image_xscale = scale_print;
image_yscale = scale_print;

ange_init = phy_rotation;




ht = 0.5

if(instance_number(test_rotule)==3){
		var rotule = instance_create_layer(x , y , layer,test_main)
		joint = physics_joint_revolute_create(id, rotule, x , y , -10, 0, true, 0, 0, true, false);
}
if(instance_number(test_rotule)< 3 ) {
	var newX = 120;
	var newY = 120;
	var _spr_print = noone;
	var _scale_rotule = 1;
	var _scale_print = 0.5
	var _phy_rotation = 0;
	var _angleMax;
	var _angleMin;
	switch(idRotule){
		
		case(1):
		_spr_print = _print_1
		_scale_rotule = _scale_rotule_1 
		_scale_print = _scale_print_1
		//newX = sprite_get_height(_spr_print)*_scale_print_1 //+  2*_scale_rotule*sprite_get_height(str_joint_back)/3
		
		/////
		newX =  sprite_get_height(_spr_print)* _scale_print
		newX = lengthdir_x(newX,15)
		newY =  sprite_get_height(_spr_print) * _scale_print
		newY = lengthdir_y(newY,15)
		
		_phy_rotation = -15;
		_angleMax = _angleMax_1
		_angleMin = _angleMin_1
		/////
		
		break;
		case(2):
		_spr_print = _spr_2
		_scale_rotule = _scale_rotule_2
		_scale_print = _scale_print_2
		//newX = sprite_get_height(_spr_print)*_scale_print_2 //+  2*_scale_rotule*sprite_get_height(str_joint_back)/3
		newX =  sprite_get_height(_spr_print)* _scale_print
		newX = lengthdir_x(newX,5)
		newY =  sprite_get_height(_spr_print) * _scale_print
		newY = lengthdir_y(newY,5)
		_phy_rotation = -5
		_angleMax = _angleMax_2
		_angleMin = _angleMin_2
		
		break;
	}
	var rotule = instance_create_layer(x + newX, y + newY , layer,test_rotule,
		{
			idRotule : idRotule+1,
			spr_print : _spr_print,
			scale_rotule : _scale_rotule,
			scale_print : _scale_print,
			phy_rotation : _phy_rotation,
			angleMax : _angleMax,
			angleMin : _angleMin,
		});
	joint = physics_joint_revolute_create(id, rotule, x , y ,-0.1, 0.2, true, 90000,-1000, true, false);
}
