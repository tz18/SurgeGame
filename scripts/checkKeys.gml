if keyboard_check(vk_left) //If the left arrow key is held
    {
        if burnFuel(fuelBurnRateTurn)
            {
                if rotatespeed > -rotatespeedmax //Check if its going as fast left as we allow
                    rotatespeed += -shipAcceleration(fuelBurnRateTurn,exhaustVelocityTurn) //If it isn't, move it faster to the left
                else rotatespeed = -rotatespeedmax //Otherwise, we just make sure its going at the maximum speed left
            }
    }
else if keyboard_check(vk_right) //Checks that the right arrow key is held.
    if burnFuel(fuelBurnRateTurn)
    {
        {
            if rotatespeed < rotatespeedmax
                rotatespeed += shipAcceleration(fuelBurnRateTurn,exhaustVelocityTurn)
            else rotatespeed = rotatespeedmax
        }
    }
if not(keyboard_check(vk_right) or keyboard_check (vk_left)) //If you aren't turning
{
    if rotatespeed != 0 //Check to see if we're not still turning
        if rotatespeed < 0
            rotatespeed += rotatefriction //Otherwise apply "turning friction" in an appropriate direction
        else
        if rotatespeed > 0
            rotatespeed -= rotatefriction
}
if keyboard_check(vk_up) //If the up arrow is held
    if burnFuel(fuelBurnRateMain){ /*checkFuel now takes an argument which defines the burn rate.*/
        fireEngineParticles()
        motion_add(image_angle, shipAcceleration(fuelBurnRateMain,exhaustVelocityMain)) //Add the acceleration value to the ships current facing direction
        if speed > topspeed //If this acceleration puts us over the top speed for this ship, slow it down accordingly.
            speed = topspeed //This ensures we can still change direction if we're at top speed, and being at top speed won't lock future vector changes out
        }
if keyboard_check (vk_down) //If the down key is held
{
    if (speed > 0)
        if burnFuel(fuelBurnRateBrake)
            friction = shipAcceleration(fuelBurnRateBrake,exhaustVelocityBrake) //Put on the brakes
            }
    else friction = 0 //If the down key isn't held, take the brakes off.
