// scr_envScan(u,v,m)
// Come posicion en coordenadas (u,v) y radio de scaneo (m). 
// Caga array con id's de instancia hexagon de las casillas alrededor.

var u = argument[0];
var v = argument[1];
var m = argument[2];
var aux;
var k=0;

aux[0] = 1;
aux[1] = -1;

for(i=1; i<=m; i++){
    
    for(j=0; j<6*i; j++){
        
        //var aux2 = "[ " + string_format(u+aux[0],3,3) + "," + string_format(v+aux[1],3,3) + "]";
        //array[k] = aux2;
        u += aux[0];
        v += aux[1];

        pix = scr_coord2pixel(u,v);
        array[k] = collision_point(pix[0],pix[1],obj_hexagon,false,false);     
        if(j!=6*i-1){
            aux = scr_moveCoord((floor(j/i))%6);
        }
        else{
            aux[0] = 2;
            aux[1] = -1;
        
        }
        

        
        //var debug = "Array " + string_format(array[k], 3, 3);
        //show_debug_message(debug);
        
        k += 1;
    }
}

return array;
