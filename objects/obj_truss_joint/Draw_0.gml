/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

x = image_mere.x
y = image_mere.y
join_friction = join_friction - 0.01

draw_self();


//draw_pie(x   , y   , 1 - join_friction , 1 , _channel, 10, 1)

 
var _curvestruct = animcurve_get(ani_draw_pie);
var _channel = animcurve_get_channel(_curvestruct,"color H");
var i = animcurve_channel_evaluate(_channel,ht);
var _c = make_color_hsv(i,100,200)

draw_pie(x  , y   , ht  , 1 , _c , 60, 1)
draw_text(10, 20, "ht : " + string(ht))
draw_text(10, 40, "i : " + string(i))
draw_text(10, 60, "isSlect : " + string(isSelect))
 

if(isSelect){ draw_sprite_ext(spr_joint_on,0,x,y,image_xscale,image_yscale,0,c_white,1)}
else {draw_sprite_ext(spr_joint_off,0,x,y,image_xscale,image_yscale,0,c_gray,1)} // a modif 
