//This script is a first stab at adding a single gravity source to the game. The rough idea is that it will pull the ship towards the nearest
//gravity object. This has some funky interactions with the world wrap, so it should probably be used sparingly on really small maps.

//TODO: Make the target object an argument. May also be worth making gravity sources as their own thing, with an optional sprite.

//gravityfactor is initialized in initializeCourse now (still probably the wrong place for it)

thesun=instance_nearest(self.x,self.y,THEFUCKINGSUN)
distance = torusDistance(self.x,self.y,thesun.x,thesun.y)
gravity = newtonGravity((self.mass+self.fuel),THEFUCKINGSUN.mass,distance)
gravity_direction = torusDirection(self.x,self.y,thesun.x,thesun.y)
