//This should define only the variables needed in ALL ships' step code segments

checkpointNumber = 0; //The ship will start with the first checkpoint.

image_angle = 90 //Default to facing up
image_speed = 0 //Stop autoanimation
image_index = 2 //Default to the neutral sprite

pastlaptimes=ds_list_create()
bestlaptime=0
lastlaptime=0
laptime=0

//Everything after this point should be dependent on the particular ship and its configuration
//and so should be moved to being initialized with the specific ship's initialization or something

//what properties of the ship determine its basic agility
//1. the mass of the ship, 2. the mass of the propellant 
//3. the rate (mass/time) that propellant is expelled
//4. the velocity at which it is expelled (efficiency of the engine)
//values 3 and 4 differ depending on whether we mean the maneuvering engines or the main engines

mass=100
fuelMax = 100 //Maximum amount of fuel //we should think of this in terms of mass now
fuel = 200 //Initial amount of fuel (this should be set by the player before the race, allowing to get an early lead with a lighter ship maybe?)
fuelBurnRateMain=0.75 //Rate at which fuel is consumed by thrusting forwards 
fuelBurnRateTurn=0.25 //Rate at which fuel is consumed by turning
fuelBurnRateBrake = 0.5 //Rate at which fuel is consumed by braking
exhaustVelocityMain=213 //these values chosen to get something near the first acceleration values we had picked
exhaustVelocityTurn=900
exhaustVelocityBrake=200
//difference in mass over difference in time * speed of exhaust gases

//all these should change based on fuel mass
rotatespeed = 0 //Initializing a variable
rotatefriction = 0.4*2 //How much friction to apply when not holding keys //not sure how this should change
//rotaterate = 0.9*1.25 //How fast does it start turning //this should be calculated live
rotatespeedmax = 8*1.3 //How fast can it turn at its maximum rate

topspeed = 1000 //How fast do we want this thing to go

//these are now calculated live
// accelrate = .8 //How fast does it accelerate forwards this should be calculated live
//brakes = 0.5 //Friction rate when holding the down button //should change based on mass

engineLeftOffset = 15 //The y position of the left engine
engineRightOffset = -15 //The y position of the right engine
engineVerticalOffset = -20 //The x position of both engines

fuelRegenRate = 0.20 //Rate at which fuel is regenerated per tick
fuelRegenCellSize = 5 //Fuel will be regenerated in chunks this size
fuelRegenCell = 0 //Initial amount of pending regenerated fuel

gravityFactor = 10000 //Gravity strength for the ship is calculated by dividing the distance to gravity source by this number. Should change based on mass.
