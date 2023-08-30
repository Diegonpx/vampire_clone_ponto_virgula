right = keyboard_check(ord("D")) or keyboard_check(vk_right);
up = keyboard_check(ord("W")) or keyboard_check(vk_up);
left = keyboard_check(ord("A")) or keyboard_check(vk_left);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);

var _xx = right - left;
var _yy = down - up;

if _xx != 0 or _yy != 0
{
	sprite_index = spr_player_walking;
	dir = point_direction(x, y, x + _xx, y + _yy);
	hspd = lengthdir_x(spd, dir);
	vspd = lengthdir_y(spd, dir);

	x += hspd;
	y += vspd;
}
else
{
	sprite_index = spr_player_idle;
}

//Diminuindo valor de countdown
spell_1_cd--;

//Criando a Spell
if spell_1_cd <= 0
{
	//Localizando a instancio do inimigo mais proximo
	var _enemy = instance_nearest (x, y, obj_par_enemy);
	
	//Criando e indo ate o inimigo mais proximo
	var _inst = instance_create_layer(x, y, "Instances", obj_spell_1);
	_inst.speed = 2;
	_inst.direction = point_direction(x, y, _enemy.x, _enemy.y);
	
	
	//Resetando o Countdown
	spell_1_cd = spell_1_timer;
}