// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function draw_pie(_x  , _y  ,_health , _max, _col, _radius, _transparency){
	if (_health > 0) { // no point even running if there is nothing to display (also stops /0
    var i, len, tx, ty, val;
    
    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 360/numberofsections
    
    val = (_health/_max) * numberofsections 
    
    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
        draw_set_colour(_col);
        draw_set_alpha(_transparency);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(_x, _y);
        
        for(i=0; i<=val; i++) {
            len = (i*sizeofsection)+90; // the 90 here is the starting angle
            tx = lengthdir_x(_radius, len);
            ty = lengthdir_y(_radius, len);
            draw_vertex(_x -tx, _y +ty);
        }
        draw_primitive_end();
        
    }
    draw_set_alpha(1);
	draw_set_colour(c_white);
}
}

function draw_pie_VertgoRed(_x  , _y  ,_health , _max, _col, _radius, _transparency){
	if (_health > 0) { // no point even running if there is nothing to display (also stops /0
    var i, len, tx, ty, val;
    
    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 360/numberofsections
    
    val = (_health/_max) * numberofsections 
    
    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
        draw_set_colour(make_colour_hsv(_col,30,10));
        draw_set_alpha(_transparency);
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(_x, _y);
        
        for(i=0; i<=val; i++) {
            len = (i*sizeofsection)+90; // the 90 here is the starting angle
            tx = lengthdir_x(_radius, len);
            ty = lengthdir_y(_radius, len);
            draw_vertex(_x+tx, _y + ty);
        }
        draw_primitive_end();
        
    }
    draw_set_alpha(1);
	}
}