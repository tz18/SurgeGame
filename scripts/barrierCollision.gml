if (not instance_exists(global.playerShipID)) || (ds_list_size(self.vertexes) < 1) 
    return false //Checks that there's a ship and if this barrier has at least two points
    
//we're checking a series of lines from point A to point B
// A---------B
//           A----------B
//                      A-------B
lastvertex[0]=self.x //the first vertex is barrierA
lastvertex[1]=self.y //so this is our first point A
for (i = 0; i < ds_list_size(self.vertexes); i += 1) //go through the list of vertexes
    {
    thisvertex=ds_list_find_value(self.vertexes,i) //the ith vertex is point B
    ship = collision_line(thisvertex[0], thisvertex[1], lastvertex[0], lastvertex[1],PlayerShip,false,true);
    if (ship == global.playerShipID) //if player's ship has hit this line segment
        {
        barrierBounce(thisvertex[0],thisvertex[1],lastvertex[0],lastvertex[1],ship)
        return true
        }
    lastvertex=ds_list_find_value(self.vertexes,i) //point B is the new point A, loop again
    }
return false
