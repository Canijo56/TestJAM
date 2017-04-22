//minDepth(x,y,obj)
//Devuelve el id del objeto que más cerca esté del punto 
var xvar=argument[0];
var yvar=argument[1];
var obj =argument[2];

//Id de objeto en capa superior, depth de dicho objeto
var objId=noone;
var dep=999999;

//Si no hay instancias del objeto salimos
if(!instance_exists(obj)){
    return -1;
}
//Con el objeto CUIDAO!: por aqui bug de todas las cartas daño 3.
with (obj) {
    if (collision_point(xvar, yvar, id, true, false)) {
        if (depth < dep) {
            objId = id;
            dep = depth;
        }
    }
}

if (objId == noone){ 
    return -1;
}
else{
    return objId;
}



