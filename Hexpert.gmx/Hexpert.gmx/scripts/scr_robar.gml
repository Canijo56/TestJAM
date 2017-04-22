
// guarda el nombre de la ultima carta del mazo

var nombreCarta = ds_list_find_value(mazo, 0);

// la borra del mazo
ds_list_delete(mazo, 0);

// la añade a la mano
var carta = scr_crearCarta(nombreCarta);
ds_list_add(mano, carta);
