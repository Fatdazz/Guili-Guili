/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
/*show_debug_message("x : "+ string(global.listRotule[global.game.select_plyer2].x) +
					" y : "+ string(global.listRotule[global.game.select_plyer2].y) +
					" image_xscale : "+ string(global.listRotule[global.game.select_plyer2].image_xscale) +
					" image_yscale : "+ string(global.listRotule[global.game.select_plyer2].image_yscale) )

*/
var _rotuleSelect = global.listRotule[global.game.select_plyer2]



if(not isMove){
	
	var _x = _rotuleSelect.x + _rotuleSelect.rotule_x 
	var _y = _rotuleSelect.y + _rotuleSelect.rotule_y
	draw_sprite_ext(spr_Player_02,0, _x, _y,
				_rotuleSelect.scale_rotule *0.5,
				_rotuleSelect.scale_rotule *0.5,
				image_angle,c_white,1)
}
else{
	
	
	var _x = _rotuleSelect.x + _rotuleSelect.rotule_x 
	var _y = _rotuleSelect.y + _rotuleSelect.rotule_y
	if(alarm[0]!=-1){
		var _rotuleSelectOther = global.listRotule[global.game.select_plyer2+1]
		var _L =  _rotuleSelectOther.scale_print * sprite_get_height(_rotuleSelectOther.spr_print)
		var _esp = (t-alarm[0])/t
		
		_x = _x + lengthdir_x(_L*_esp,_rotuleSelectOther.image_angle)
		_y = _y + lengthdir_y(_L*_esp,_rotuleSelectOther.image_angle)
		
		
		var _channel = animcurve_get_channel(curvestruct,"angle")
		var _valeur = animcurve_channel_evaluate(_channel, _esp );
		image_angle = _rotuleSelectOther.image_angle*_esp + _rotuleSelect.image_angle*(1-_esp);
		
		_valeur = animcurve_channel_evaluate(_channel, _esp );
		_channel = animcurve_get_channel(curvestruct,"scale")
		image_xscale =  _rotuleSelectOther.scale_rotule*_esp + _rotuleSelect.scale_rotule*(1-_esp);
		image_yscale =  _rotuleSelectOther.scale_rotule*_esp + _rotuleSelect.scale_rotule*(1-_esp);
		
	}
	if(alarm[1]!=-1){
		var _rotuleSelectOther = global.listRotule[global.game.select_plyer2-1]
		var _L = _rotuleSelect.scale_print * sprite_get_height(_rotuleSelect.spr_print)
		var _esp = (t-alarm[1])/t
		
		_x = _x - lengthdir_x(_L*_esp,_rotuleSelect.image_angle)
		_y = _y - lengthdir_y(_L*_esp,_rotuleSelect.image_angle)
		
		var _channel = animcurve_get_channel(curvestruct,"angle")
		var _valeur = animcurve_channel_evaluate(_channel, 1-_esp );
		image_angle = _rotuleSelectOther.image_angle*_esp + _rotuleSelect.image_angle*(1-_esp);
		
		_channel = animcurve_get_channel(curvestruct,"scale")
		_valeur = animcurve_channel_evaluate(_channel, _esp );
		image_xscale =  _rotuleSelectOther.scale_rotule*_esp + _rotuleSelect.scale_rotule*(1-_esp);
		image_yscale =  _rotuleSelectOther.scale_rotule*_esp + _rotuleSelect.scale_rotule*(1-_esp);
	}
	
	draw_sprite_ext(spr_Player_02,0,
				_x,
				_y,
				image_xscale*0.5,
				image_yscale*0.5,
				image_angle,c_white,1)

}

