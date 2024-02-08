/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
depth = depth_info // regarde ici pour integation dans hgame
fixA = physics_fixture_create();
physics_fixture_set_box_shape(fixA,10,10)
physics_fixture_set_density(fixA,0);
physics_fixture_set_friction(fixA,0);
physics_fixture_set_kinematic(fixA);
physics_fixture_set_collision_group(fixA,-5);
my_fix = physics_fixture_bind(fixA,id)

image_alpha = 1

var _num  = instance_number(obj_geant_full)
for(var i = 0; i < _num; i++){
	
	var inst = instance_find(obj_geant_full,i);
	phy_position_x = inst.x
	phy_position_y = inst.y
	image_angle = inst.image_angle
	image_xscale = inst.image_xscale
	image_yscale = inst.image_yscale
	
}
if(!move and tache01!=noone){
	

	instance_create_depth(phy_position_x,phy_position_y,depth-1,tache01,{
		image_xscale: image_xscale,
		image_yscale : image_yscale,
		obj_IdMere:id
	})
}
if(!move and tache02!=noone){
	
	instance_create_depth(phy_position_x,phy_position_y,depth -1,tache02,{
		image_xscale : image_xscale,
		image_yscale : image_yscale,
		obj_IdMere:id
		
	})

}

show_debug_message("depth membre :  " + string(depth))