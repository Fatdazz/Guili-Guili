/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

var render_flags = phy_debug_render_shapes | phy_debug_render_joints | phy_debug_render_coms | phy_debug_render_obb;

physics_world_draw_debug(render_flags);

draw_self();
//draw_circle_color(x,y,30,c_aqua,c_aqua,false)
