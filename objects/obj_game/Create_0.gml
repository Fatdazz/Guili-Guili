/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
GameOver = false;
idEtape = 0; 
global.game = id;
global.debug = false
global.isMusic = true;
select_plyer1 = 0;
select_plyer2 = 0;

//idInput = instance_create_layer(x,y,layer,obj_input_game)

//arrInfoJoint =  array_create(3,new infoJoint());

Alarm_pler2 = 60
coef_addGauge = 2.2;
addGauge = 0;
cont_Alrm = 0

moyen_touch = array_create(60,false);
cont_moyen_touch = 0;


gaugeGeant = 0;
instance_create_layer(0,0,id.layer,obj_music)