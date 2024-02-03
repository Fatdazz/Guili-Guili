/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
/*show_debug_message("x : "+ string(global.listRotule[global.game.select_plyer2].x) +
					" y : "+ string(global.listRotule[global.game.select_plyer2].y) +
					" image_xscale : "+ string(global.listRotule[global.game.select_plyer2].image_xscale) +
					" image_yscale : "+ string(global.listRotule[global.game.select_plyer2].image_yscale) )

*/
if(not isMove){
	
	var _x = global.listRotule[global.game.select_plyer2].x + global.listRotule[global.game.select_plyer2].rotule_x 
	var _y = global.listRotule[global.game.select_plyer2].y + global.listRotule[global.game.select_plyer2].rotule_y
	draw_sprite_ext(spr_Player_02,0, _x, _y,
				global.listRotule[global.game.select_plyer2].scale_rotule *0.5,
				global.listRotule[global.game.select_plyer2].scale_rotule *0.5,
				image_angle,c_white,1)
}
else{
	var _x = global.listRotule[global.game.select_plyer2].x + global.listRotule[global.game.select_plyer2].rotule_x 
	var _y = global.listRotule[global.game.select_plyer2].y + global.listRotule[global.game.select_plyer2].rotule_y
	if(alarm[0]!=-1){
		var _L = global.listRotule[global.game.select_plyer2+1].scale_print * sprite_get_height(global.listRotule[global.game.select_plyer2+1].spr_print)
		_x = _x + lengthdir_x(_L*(t-alarm[0])/t,global.listRotule[global.game.select_plyer2+1].image_angle)
	
		_y = _y + lengthdir_y(_L*(t-alarm[0])/t,global.listRotule[global.game.select_plyer2+1].image_angle)
	}
	if(alarm[1]!=-1){
		var _L = global.listRotule[global.game.select_plyer2].scale_print * sprite_get_height(global.listRotule[global.game.select_plyer2].spr_print)
		_x = _x - lengthdir_x(_L*(t-alarm[1])/t,global.listRotule[global.game.select_plyer2].image_angle)
	
		_y = _y - lengthdir_y(_L*(t-alarm[1])/t,global.listRotule[global.game.select_plyer2].image_angle)
	}


	draw_sprite_ext(spr_Player_02,0,
				_x,
				_y,
				global.listRotule[global.game.select_plyer2].scale_rotule*0.5,
				global.listRotule[global.game.select_plyer2].scale_rotule*0.5,
				image_angle,c_white,1)

}

