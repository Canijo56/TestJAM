// guardamos el Nombre de la carta en la
// pila de descartes y la destruimos

hex = collision_point(x,y,obj_hexagon, false, false);
hex.cardId = -1;
ds_list_add(obj_player.descartes, cardName);

instance_destroy();
