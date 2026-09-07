function init_boss_meter(){
	global.boss_anger = 0;
}

function save_boss_meter(n){
	global.boss_anger = n;
}

function load_boss_meter(){
	return global.boss_anger
}