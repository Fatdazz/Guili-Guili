/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur


if(joint!=noone){
	var _rot = -(id.phy_rotation + physics_joint_get_value(id.joint,phy_joint_angle) *180/pi) 
	//draw_sprite_ext(spr_1px,0,x,y,164/2,4,_rot, c_white,1);
}
show_debug_message("draw rotule " + string(idRotule) + " message 1: " + string(sprite_index) )
draw_sprite_ext(sprite_index,0,	x + lengthdir_x(sprite_get_height(str_joint_back)/3,image_angle - 180),
								y + lengthdir_y(sprite_get_height(str_joint_back)/3,image_angle - 180),
								1,1,image_angle  - 90,c_white,1)

/// Joint 
draw_sprite_ext(str_joint_back,0,x,y,scale_rotule,scale_rotule,image_angle,c_white,1);

var _curvestruct = animcurve_get(ani_draw_pie);
var _channel = animcurve_get_channel(_curvestruct,"color H");
var i = animcurve_channel_evaluate(_channel,ht);
var _c = make_color_hsv(i,100,200)

draw_pie(x  , y   , 1 - ht  , 1 , _c , 30, 1)

draw_sprite_ext(spr_joint_off,0,x,y,scale_rotule,scale_rotule,image_angle,c_white,1)