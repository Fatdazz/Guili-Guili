/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

/*
physics_world_create(0.1);                      //Pixel to meters scale
physics_world_gravity(0, 10);                    //No gravity
physics_world_update_iterations(20);            //iterations per step
physics_world_update_speed(60);                 //Update speed
*/

var instA  = instance_find(obj_moto,0)
var instB = instance_find(obj_bras_alex,0)
joint = physics_joint_revolute_create(instA, instB, instA.x, instA.y, 0, 0, false, 100, 200, true, false);

