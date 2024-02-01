/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if place_empty(x, y,obj_tache )
{
	
    global.ok = true
	/*var u = instance_place(x, y, obj_tache)
		u.image_alpha = u.image_alpha - 0.05;
		if(u.image_alpha < 0.1) global.ok= false*/
		
		var _list = ds_list_create();
		var _num = instance_place_list(x, y, obj_tache, _list, false);

		if _num > 0
		{
		for (var i = 0; i < _num; ++i;)
		{
			_list[|i].image.alpha =_list[|i].image.alpha - 0.1;
		}
		ds_list_destroy(_list);
}


	
}else global.ok = false

