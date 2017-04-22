

var nombreCarta = argument[0];
// Switch entre todos los tipos posibles de cartas (los nombres almacenados en el mazo) <--- ahora mismo hay 3 de prueba


var carta = instance_create(x,y,obj_card);

switch(nombreCarta){
        case 1:
        with(carta){
            cardName = nombreCarta;
            with (obj_game){
                other.owner = players[player];
            }
            hp = 1;
            dmg = 1;
            costA = 1;
            costB = 1;
            range = 1;
            cardFaction = faction.factionA;
            cardState = state.hand;
            debug = "carta: " + string_format(id, 3, 3);
            show_debug_message(debug);
            
        }
        break;
        
        case 2:
        with(carta){
            cardName = nombreCarta;
            with (obj_game){
                other.owner = players[player];
            }
            hp = 2;
            dmg = 2;
            costA = 2;
            costB = 2;
            range = 2;
            cardFaction = faction.factionA;
            cardState = state.hand;
            debug = "carta: " + string_format(id, 3, 3);
            show_debug_message(debug);
        }
        break;
        
        case 3:
        with(carta){
            cardName = nombreCarta;
            with (obj_game){
                other.owner = players[player];
            } 
            hp = 3;
            dmg = 3;
            costA = 3;
            costB = 3;
            range = 3;
            cardFaction = faction.factionA;
            cardState = state.hand;
            debug = "carta: " + string_format(id, 3, 3);
            show_debug_message(debug);
        }
        break;
        
        /*default:
        with(carta){
            cardName = nombreCarta;
            with (obj_game){
                other.owner = players[player];
            } 
            hp = 4;
            dmg = 4;
            costA = 4;
            costB = 4;
            range = 4;
            cardFaction = faction.factionA;
            cardState = state.hand;
            debug = "carta: " + string_format(id, 3, 3);
            show_debug_message(debug);
        }*/
    return carta.id;
}




