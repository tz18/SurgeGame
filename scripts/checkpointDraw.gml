//To be placed in the Draw event of a Checkpoint.
ship = collision_line(x, y, point2.x, point2.y,PlayerShip,false,true); //Is the player ship between the red dot and the nearest blue dot?
if ship != noone //If yes..
    if (ship.checkpointNumber = checkpointNumber) //Check to see if the ship is at the right checkpoint
    {
        lineColor = c_green  //If it is, turn green.
        if finishLine = true //If this is the last checkpoint in a lap
        {
            ship.checkpointNumber = 0; //Reset the ship's counter
            Checkpoint.lineColor = c_white //Turn all checkpoints white again
            }
        else ship.checkpointNumber += 1; //Otherwise, onto the next checkpoint.
    }
draw_set_color(lineColor);
draw_line (x,y,point2.x,point2.y); //Draw a line from the red checkpoint to the nearest blue checkpoint.
