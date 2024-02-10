//image_alpha = image_alpha + 0.03;
//if (image_alpha > 1) image_alpha = 1
x = obj_IdMere.x
y = obj_IdMere.y

if(isActif && gauge <= 0){
	var _i = false;
	while(!_i){
	var _num  = floor( random(instance_number(obj_tache)))
	var _obj = instance_find(obj_tache,_num)
	if(_obj.isActif==false){
		_obj.gauge = _obj.gaugeMax
		_obj.isActif = true;
		_obj.alarm[0] =  floor(random_range(60*18, 60*25));
		_i = true;
		}
	}
		
	isActif = false;
}
if(alarm[0] < 160){
	num_clignio = (num_clignio + 1) mod 15
	if(num_clignio == 0) isclignio = !isclignio
		
}
