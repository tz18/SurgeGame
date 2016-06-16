loadout = ds_map_create()

//so, why not just call different initialization functions that go mass=100 etc,
//why go through the trouble of packing a ds_list and then immediately unpacking it?
//because, the idea is that in the future the ds_list would be unpacked from json
//or some other data structure saved to disk (ini file?)
//and then you could edit ships in text files
//idk, just seems like the right way to do it, maybe it isn't, we should discuss

loadout[?"mass"]=100
loadout[?"fuelMax"] = 100 //Maximum amount of fuel //we should think of this in terms of mass now
loadout[?"fuel"] = 200 //Initial amount of fuel (this should be set by the player before the race, allowing to get an early lead with a lighter ship maybe?)
loadout[?"fuelBurnRateMain"]=0.75 //Rate at which fuel is consumed by thrusting forwards 
loadout[?"fuelBurnRateTurn"]=0.25 //Rate at which fuel is consumed by turning
loadout[?"fuelBurnRateBrake"] = 0.5 //Rate at which fuel is consumed by braking
loadout[?"exhaustVelocityMain"]=213 //these values chosen to get something near the first acceleration values we had picked
loadout[?"exhaustVelocityTurn"]=900 
loadout[?"exhaustVelocityBrake"]=200
//difference in mass over difference in time * speed of exhaust gases

//all these should change based on fuel mass
loadout[?"rotatespeed"] = 0 //Initializing a variable
loadout[?"rotatefriction"] = 0.4*2 //How much friction to apply when not holding keys //not sure how this should change
//rotaterate = 0.9*1.25 //How fast does it start turning //this should be calculated live
loadout[?"rotatespeedmax"] = 8*1.3 //How fast can it turn at its maximum rate

loadout[?"topspeed"] = 1000 //How fast do we want this thing to go

//these are now calculated live
// accelrate = .8 //How fast does it accelerate forwards this should be calculated live
//brakes = 0.5 //Friction rate when holding the down button //should change based on mass

loadout[?"engineLeftOffset"] = 15 //The y position of the left engine
loadout[?"engineRightOffset"] = -15 //The y position of the right engine
loadout[?"engineVerticalOffset"] = -20 //The x position of both engines

loadout[?"fuelRegenRate"] = 0.20 //Rate at which fuel is regenerated per tick
loadout[?"fuelRegenCellSize"] = 5 //Fuel will be regenerated in chunks this size
loadout[?"fuelRegenCell"] = 0 //Initial amount of pending regenerated fuel

return loadout
