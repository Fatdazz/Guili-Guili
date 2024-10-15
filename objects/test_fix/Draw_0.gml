/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur



render_flags = phy_debug_render_shapes | phy_debug_render_joints | phy_debug_render_coms | phy_debug_render_obb;
//physics_world_draw_debug(render_flags);

/*
draw_text(10,30, "joint_reaction_force_x - y: " + string(physics_joint_get_value(joint, phy_joint_reaction_force_x ) ) + " - " + string(physics_joint_get_value(joint, phy_joint_reaction_force_x ) ) );
draw_text(10,50, "phy_joint_reaction_torque: " + string(physics_joint_get_value(joint,phy_joint_reaction_torque)));
draw_text(10,70, "phy_joint_max_motor_force: " + string(physics_joint_get_value(joint,phy_joint_max_motor_force)));
draw_text(10,90, "phy_joint_max_motor_torque: " + string(physics_joint_get_value(joint,phy_joint_max_motor_torque)));
draw_text(10,110, "phy_joint_motor_force	: " + string(physics_joint_get_value(joint,phy_joint_motor_force	)));
draw_text(10,130, "phy_joint_motor_speed	: " + string(physics_joint_get_value(joint,phy_joint_motor_speed	)));
draw_text(10,150, "phy_joint_motor_torque	: " + string(physics_joint_get_value(joint,phy_joint_motor_torque	)));


draw_text(700,30, "phy_joint_angle de "+ string(0) + " : " + string(physics_joint_get_value(id.joint,image_angle) *180/pi));
for(var i= 0; i < instance_number(test_rotule)-1; i +=1){
	var _temp = instance_find(test_rotule,i);
	draw_text(700,30+20*(i+1), "phy_joint_angle de "+ string(i+1) + " : " + string(physics_joint_get_value(_temp.joint,phy_joint_angle) *180/pi));
	
}

draw_text(1300,30, "phy_rotation de "+ string(0) + " : " + string(phy_rotation));
for(var i= 0; i < instance_number(test_rotule); i +=1){
	var _temp = instance_find(test_rotule,i);
	draw_text(1300,30+20*(i+1), "phy_rotation de "+ string(i+1) + " : " + string(_temp.phy_rotation));
	
}


//draw_sprite_ext(spr_1px,0,x,y,164/2,4,-physics_joint_get_value(id.joint,phy_joint_angle) *180/pi, c_white,1);
*/
draw_self()

if(phy_speed_x == 0)draw_sprite_ext(spr_cheveux_off,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)
if(phy_speed_x > 0)draw_sprite_ext(spr_cheveux_avance,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)
if(phy_speed_x < 0)draw_sprite_ext(spr_cheveux_recule,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)

//draw_sprite_ext(spr_bras_1,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)
draw_sprite_ext(spr_tete_off,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)
if(global.ok) draw_sprite_ext(spr_tete_on,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)


draw_sprite_ext(spr_pied_off,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)


switch(global.game.select_plyer1){
	case 0:
	draw_sprite_ext(spr_bras_1,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)
	break;
	case 1:
	draw_sprite_ext(spr_bras_2,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)
	break;
	case 2:
	draw_sprite_ext(spr_bras_3,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)
	break;
	case 3:
	draw_sprite_ext(spr_bras_4,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)
	
}


draw_sprite_ext(str_joint_back,0,x + rotule_x,y + rotule_y,scale_rotule,scale_rotule,image_angle,c_white,1);


var _channel = animcurve_get_channel(curveRotule,"draw pie color H");
var i = animcurve_channel_evaluate(_channel,gauge/gaugeMax);
var _c = make_color_hsv(i,200,250)


draw_pie(x + rotule_x, y + rotule_y , 1 - gauge/gaugeMax  , 1 , _c , 30, 1)


if(global.listRotule[global.game.select_plyer1]==id){
	draw_sprite_ext(spr_joint_on,0,x + rotule_x,y + rotule_y,scale_rotule,scale_rotule,image_angle,c_white,1)
}
else{
	draw_sprite_ext(spr_joint_off,0,x + rotule_x,y + rotule_y,scale_rotule,scale_rotule,image_angle,c_white,1)
}

fct_draw_rotuleAngle()


var _valeur = animcurve_channel_evaluate(_channel, cont_vibration);
if(	sign(animcurve_channel_evaluate(_channel, cont_vibration + 1/fps) - animcurve_channel_evaluate(_channel, cont_vibration)) != 
	sign(animcurve_channel_evaluate(_channel, cont_vibration ) - animcurve_channel_evaluate(_channel, cont_vibration - 1/fps))
	)
{
	draw_text(1500, 10, string(sign(animcurve_channel_evaluate(_channel, cont_vibration + 1/fps) - animcurve_channel_evaluate(_channel, cont_vibration))))	
	
	if(sign(animcurve_channel_evaluate(_channel, cont_vibration ) - animcurve_channel_evaluate(_channel, cont_vibration - 1/fps))==-1){
	var part = part_system_create(Part_moto)
	var _dy = 312 - sprite_height/2
	var _dx = 100 - sprite_width/2 
	part_system_position(part,x+_dx,y+_dy)
		}
}
