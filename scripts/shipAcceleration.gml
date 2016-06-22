//shipAcceleration(fuelBurnRate,exhaustVelocity)
//calculates the acceleration based on the ship's current mass and the thruster properties supplied
fuelBurnRate=argument0
exhaustVelocity=argument1
return ((fuelBurnRate*exhaustVelocity)/(mass+fuel))
