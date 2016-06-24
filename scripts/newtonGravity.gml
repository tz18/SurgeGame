//newtonGravity(mass1,mass2,distance)
//calculates gravity strength from newton's law

mass1=argument0
mass2=argument1
distance=argument2

g = room.gravityFactor
return (g*((mass1*mass2)/(distance^2)))

