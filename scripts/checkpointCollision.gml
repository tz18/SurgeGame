//Game logic should go in the step event right?
if (instance_exists(global.playerShipID) and global.playerShipID.checkpointNumber == checkpointNumber) //Checks that there's a ship (so the game doesn't brick if for some reason there isn't), and then checks what the current checkpoint number is.
    {
        if finishLine == true //If this is the last checkpoint
            lineColor = c_fuchsia //Look differently
        else
            lineColor = c_blue //But either way we're showing that this is the line to shoot for.
    }
ship = collision_line(x, y, point2.x, point2.y,PlayerShip,false,true); //Is the player ship between the red dot and the nearest blue dot?
if ship == global.playerShipID //If yes..
    if (ship.checkpointNumber = checkpointNumber) //Check to see if the ship is at the right checkpoint
    {
        lineColor = c_green  //If it is, turn green.
        if finishLine = true //If this is the last checkpoint in a lap
        {
            ship.checkpointNumber = 0; //Reset the ship's counter
            ship.lastlaptime=ship.laptime //it's the old laptime now
            ds_list_add(ship.pastlaptimes, ship.lastlaptime) //let's jot this down
            if ship.bestlaptime = 0{ //if this is the first lap
                ship.bestlaptime=ship.laptime //this is the new best lap
                }
            else
                ship.bestlaptime=min(ship.laptime,ship.bestlaptime) //otherwise, if this was shorter than the best lap, it's the new best lap
            ship.laptime=0 //new lap, new lap time
            Checkpoint.lineColor = c_white //Turn all checkpoints white again
            }
        else ship.checkpointNumber += 1; //Otherwise, onto the next checkpoint.
        ship.fuel = min(ship.fuelMax,ship.fuel+ship.fuelRegenCellSize)
    }
