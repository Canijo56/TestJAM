// Acepta coordenadas (u,v) y devuelve su posicion en pantalla
// scr_coord2pixel(u,v)


var u = argument0;
var v = argument1;

var pixelPos;
pixelPos[0] = (u-v) * (sprite_get_width(spr_hexagon))/2 ;
pixelPos[1] = -(u+v) * (sprite_get_width(spr_hexagon)) * sqrt(3)/2;

return pixelPos;
