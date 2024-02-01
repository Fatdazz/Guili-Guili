var _curvestruct = animcurve_get(ani_moveCorp);

_channel = animcurve_get_channel(_curvestruct,"Jambe")

cont_anim_rire = 0;
angleInit_anim_rire = image_angle;
angleMax_anim_rire = angleMax_anim_rire - angleRand_anim_rire 
rand_anim_rire = random(angleRand_anim_rire) + angleMax_anim_rire ;
