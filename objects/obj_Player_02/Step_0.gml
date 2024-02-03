/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(not isMove  and global.input.button_J2_next and not global.input.button_J2_pre and global.game.select_plyer2 !=3){
	
	isMove = true;
	isNext = true;
	isPre = false;
	alarm[0] = t;
}
if(not isMove  and not global.input.button_J2_next and global.input.button_J2_pre and global.game.select_plyer2 !=0 ){
	isMove = true;
	isNext = false;
	isPre = true;
	alarm[1] = t;
}

