//colocarCarta(cardID,xDestiny,yDestiny)
//A partir de un ID colocamos un objeto unidad en el mapa

var cardID = argument0;


var cardUnit = instance_create(mouse_x,mouse_y,obj_cardUnit);

with (cardUnit){
    cardName = cardID.cardName;
    owner = other.id;
    hp = cardID.hp;
    dmg = cardID.dmg;
    hasMoved = 0;
    hasAttacked = 0;
    costA = cardID.costA;
    costB = cardID.costB;
    range = cardID.range;
    cardFaction = cardID.cardFaction;
    cardState = cardID.cardState;
    Xhex = instance_nearest(x,y,obj_hexagon).Xhex;
    Yhex = instance_nearest(x,y,obj_hexagon).Yhex;
}

var aux = instance_nearest(cardUnit.x,cardUnit.y,obj_hexagon);
aux.cardId=cardUnit;
ds_list_delete(mano, ds_list_find_index(mano, cardID)) ;

with(cardID){
    instance_destroy();
}

