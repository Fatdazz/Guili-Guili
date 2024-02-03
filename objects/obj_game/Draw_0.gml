/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var _plyer1 = global.listRotule[select_plyer1]
var angle = physics_joint_get_value(_plyer1.joint, phy_joint_angle)*180/pi;
var _text = "angle select du player 1 : " + string(angle);

//draw_self()
draw_text(10,10,_text)
