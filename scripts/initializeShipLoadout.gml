//initializeShipLoadout(loadout)
//takes one argument, a ds_map (dictionary) containing all the arguments keyed by the name

loadout=argument0

//what properties of the ship determine its basic agility
//1. the mass of the ship, 
//2. the mass of the propellant 
//3. the rate (mass/time) that propellant is expelled
//4. the velocity at which it is expelled (efficiency of the engine)
//values 3 and 4 differ depending on whether we mean the maneuvering engines or the main engines

mass=loadout[? "mass"]
fuelMax = loadout[?"fuelMax"] //Maximum amount of fuel //we should think of this in terms of mass now
fuel = loadout[?"fuel"]//Initial amount of fuel (this should be set by the player before the race, allowing to get an early lead with a lighter ship maybe?)
fuelBurnRateMain=loadout[?"fuelBurnRateMain"] //Rate at which fuel is consumed by thrusting forwards 
fuelBurnRateTurn=loadout[?"fuelBurnRateTurn"] //Rate at which fuel is consumed by turning
fuelBurnRateBrake = loadout[?"fuelBurnRateBrake"] //Rate at which fuel is consumed by braking
exhaustVelocityMain=loadout[?"exhaustVelocityMain"] //these values chosen to get something near the first acceleration values we had picked
exhaustVelocityTurn=loadout[?"exhaustVelocityTurn"]
exhaustVelocityBrake=loadout[?"exhaustVelocityBrake"]
//difference in mass over difference in time * speed of exhaust gases

//all these should change based on fuel mass
rotatespeed = loadout[?"rotatespeed"] //Initializing a variable
rotatefriction = loadout[?"rotatefriction"] //How much friction to apply when not holding keys //not sure how this should change
//rotaterate = 0.9*1.25 //How fast does it start turning //this should be calculated live
rotatespeedmax = loadout[?"rotatespeedmax"] //How fast can it turn at its maximum rate

topspeed = loadout[?"topspeed"] //How fast do we want this thing to go

//these are now calculated live
// accelrate = .8 //How fast does it accelerate forwards this should be calculated live
//brakes = 0.5 //Friction rate when holding the down button //should change based on mass

engineLeftOffset = loadout[?"engineLeftOffset"] //The y position of the left engine
engineRightOffset = loadout[?"engineRightOffset"] //The y position of the right engine
engineVerticalOffset = loadout[?"engineVerticalOffset"] //The x position of both engines

fuelRegenRate = loadout[?"fuelRegenRate"] //Rate at which fuel is regenerated per tick
fuelRegenCellSize = loadout[?"fuelRegenCellSize"] //Fuel will be regenerated in chunks this size
fuelRegenCell = loadout[?"fuelRegenCell"] //Initial amount of pending regenerated fuel

ds_map_destroy(loadout)
