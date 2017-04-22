var i, directions, aux;

i = argument[0];

directions[0,0] = 0;
directions[0,1] = 1;
directions[1,0] = -1;
directions[1,1] = 1;
directions[2,0] = -1;
directions[2,1] = 0;

directions[3,0] = 0;
directions[3,1] = -1;
directions[4,0] = 1;
directions[4,1] = -1;
directions[5,0] = 1;
directions[5,1] = 0;


aux[0] = directions[i,0]
aux[1] = directions[i,1]

return aux;
