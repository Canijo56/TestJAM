show_debug_message("index2coord inicio ---------------------------------------------------");


var debug;

// Acepta un índice y devuelve vector(u,v) de posición

var index;
index = argument0;


// Averiguamos a que capa de hexagonos pertenece (m)

var m;
m = ceil((1/6) * (-3 + sqrt(9 + 12*index)));

// Nos movemos a la primera casilla de la ultima capa

var moveVect;
moveVect = scr_moveCoord(4);
coord[0] = m * moveVect[0];
coord[1] = m * moveVect[1];

debug = "Capa: " + string_format(m, 3, 3);
show_debug_message(debug);

// Angulo que hay que girar en la ultima capa.

    // Averiguamos las casillas en la capa m -1.
        
        var n;
        n = 3 * m * (m-1) + 1;
    
    // Numero de casillas que hay que girar
    
    var ang;
    if (index != 0){
        ang = index - n; // ¡¡ojo con el NO +1!!
    }
    
    else{ang=0}
    
        debug = "ang: " + string_format(ang, 3, 3);
        show_debug_message(debug);
    
    
    // Aplicamos los giros hasta llegar a la casilla deseada
    
        var coord, moveCoord1, moveCoord2;
        var j = 0;
        while (ang >= m && m !=0){
        
                debug = "j = [" + string_format(j,3,3) + "]";
                show_debug_message(debug);
                
            moveCoord1 = scr_moveCoord(j);     
            coord[0] += m*moveCoord1[0];
            coord[1] += m*moveCoord1[1];

                debug = "Bucle U = [" + string_format(coord[0],3,3) + "]";
                show_debug_message(debug);
                debug = "Bucle V = [" + string_format(coord[1],3,3) + "]";
                show_debug_message(debug);
            ang -= m;
            j += 1;  
         }
         
        moveCoord2 = scr_moveCoord(j); 
        coord[0] += ang*moveCoord2[0];
        coord[1] += ang*moveCoord2[1];

        debug = "Coord U = [" + string_format(coord[0],3,3) + "]";
        show_debug_message(debug);
        debug = "Coord V = [" + string_format(coord[1],3,3) + "]";
        show_debug_message(debug);
    
    
    show_debug_message("index2coord final ---------------------------------------------------");
    
return coord;
