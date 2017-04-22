var unit = argument[0];
var hexTo = argument[1];

var hexFrom = collision_point(unit.x, unit.y, obj_hexagon, false, false);

hexTo.cardId = hexFrom.cardId;
hexFrom.cardId = -1;

unit.x = hexTo.x;
unit.y = hexTo.y;
unit.Xhex = hexTo.Xhex;
unit.Yhex = hexTo.Yhex;

unit.hasMoved = 1;




