//Defining variables used in the player ship's step code segments

image_angle = 90 //Default to facing up
image_speed = 0 //Stop autoanimation
image_index = 2 //Default to the neutral sprite


rotatespeed = 0 //Initializing a variable
rotatefriction = 0.4*2 //How much friction to apply when not holding keys
rotaterate = 0.85*1.25 //How fast does it start turning
rotatespeedmax = 8*1.25 //How fast can it turn at its maximum rate


accelrate = 1 //How fast does it accelerate forwards
topspeed = 15 //How fast do we want this thing to go
brakes = 0.5 //Friction rate when holding the down button

engineLeftOffset = 15 //The y position of the left engine
engineRightOffset = -15 //The y position of the right engine
engineVerticalOffset = -20 //The x position of both engines

fuelmax = 100 //Maximum amount of fuel
fuelrate = 1 //Rate at which fuel is consumed
fuel = 100 //Initial amount of fuel
