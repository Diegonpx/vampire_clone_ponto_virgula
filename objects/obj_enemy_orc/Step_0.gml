//Variavel local para definir o valor da borda(area) em que o inimigo pode sair da area da camera sem se teleportar
var _border = 64;

//Teleportando se a distancia Y for maior que a borda
if y < global.cmy - _border
{
	y = global.cmy + global.cmh + _border;
}

if y > global.cmy + global.cmh + _border
{
	y = global.cmy - _border;
}

//Teleportando se a distancia X for maior que a borda
if x < global.cmx - _border
{
	x = global.cmx + global.cmw + _border
}

if x > global.cmx + global.cmw + _border
{
	x = global.cmx - _border;
}