if (((rotatespeed >= 0) && (rotatespeed < rotaterate)) || ((rotatespeed <= 0) && (rotatespeed > -rotaterate)))
    rotatespeed = 0 //Helps the ship come to rest and stop rotating. Without this, it will maintain a tiny bit of rotation.
    
if rotatespeed == rotatespeedmax //If we've maxed out how fast we can turn to the right, use the far right sprite
    image_index = 4
if rotatespeed < rotatespeedmax && rotatespeed > rotaterate //If we're turning right but aren't at max rotation, use the near right sprite
    image_index = 3
if rotatespeed < rotaterate/2 && rotatespeed > -rotaterate/2 //If we're at 0, or +- half of our rotation rate, display the neutral sprite
    image_index = 2
if rotatespeed > -rotatespeedmax && rotatespeed < -rotaterate //If we're turning left but aren't at max rotation, use the near left sprite
    image_index = 1    
if rotatespeed == -rotatespeedmax //If we've maxed out how far we can turn to the left, use the far left sprite
    image_index = 0

if ((image_angle - rotatespeed) < 0)
    image_angle = 360 - rotatespeed
else if ((image_angle - rotatespeed) > 360)
    image_angle = 0 - rotatespeed
else
    image_angle -= rotatespeed //Updates the sprite to face the direction we're turning
