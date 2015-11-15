//To be placed in the Draw event of a Checkpoint.
draw_set_color(c_white); //When drawing lines, default to white.
ship = collision_line(x, y, point2.x, point2.y,PlayerShip,false,true); //Is the player ship between the red dot and the nearest blue dot?
if ship != noone //If yes..
    if (ship.checkpointNumber = checkpointNumber) //Check to see if the ship is at the right checkpoint
    {
        draw_set_color(c_green); //If it is, flash green.
        if finishLine = true //If this is the last checkpoint in a lap
            ship.checkpointNumber = 0; //Reset the ship's counter
        else ship.checkpointNumber += 1; //Otherwise, onto the next checkpoint.
    }
draw_line (x,y,point2.x,point2.y); //Draw a line from the red checkpoint to the nearest blue checkpoint.
