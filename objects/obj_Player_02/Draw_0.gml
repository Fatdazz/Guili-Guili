/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

show_debug_message("x : "+ string(global.listRotule[tempselect].x) +
					" y : "+ string(global.listRotule[tempselect].y) +
					" image_xscale : "+ string(global.listRotule[tempselect].image_xscale) +
					" image_yscale : "+ string(global.listRotule[tempselect].image_yscale) )


if(not isMove){
draw_sprite_ext(spr_Player_02,0,global.listRotule[tempselect].x,
				global.listRotule[tempselect].y,
				global.listRotule[tempselect].image_xscale,
				global.listRotule[tempselect].image_yscale,
				image_angle,c_white,1)
}
else{
	var _x = global.listRotule[tempselect].x
	var _y = global.listRotule[tempselect].y
	if(alarm[0]!=-1){
		var _L = global.listRotule[tempselect+1].scale_print * sprite_get_height(global.listRotule[tempselect+1].spr_print)
		_x = _x + lengthdir_x(_L*(t-alarm[0])/t,global.listRotule[tempselect+1].image_angle)
	
		_y = _y + lengthdir_y(_L*(t-alarm[0])/t,global.listRotule[tempselect+1].image_angle)
	}
	if(alarm[1]!=-1){
		var _L = global.listRotule[tempselect].scale_print * sprite_get_height(global.listRotule[tempselect].spr_print)
		_x = _x - lengthdir_x(_L*(t-alarm[1])/t,global.listRotule[tempselect].image_angle)
	
		_y = _y - lengthdir_y(_L*(t-alarm[1])/t,global.listRotule[tempselect].image_angle)
	}


	draw_sprite_ext(spr_Player_02,0,
				_x,
				_y,
				global.listRotule[tempselect].image_xscale,
				global.listRotule[tempselect].image_yscale,
				image_angle,c_red,1)


}

