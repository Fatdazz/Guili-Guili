/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(not isMove  and global.input.button_J2_next and not global.input.button_J2_pre ){
	
	isMove = true;
	alarm[0] = t;
}
if(not isMove  and not global.input.button_J2_next and global.input.button_J2_pre ){
	isMove = true;
	alarm[1] = t;
}

