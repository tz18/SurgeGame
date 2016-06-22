//This script is a first stab at adding a single gravity source to the game. The rough idea is that it will pull the ship towards the nearest
//gravity object. This has some funky interactions with the world wrap, so it should probably be used sparingly on really small maps.

//TODO: Make the target object an argument. May also be worth making gravity sources as their own thing, with an optional sprite.

gravityFactor = .0000001 //lets make everything complicated
thesun=instance_nearest(self.x,self.y,THEFUCKINGSUN)
distance = torusDistance(self.x,self.y,thesun.x,thesun.y)
gravity = (gravityFactor*(((self.mass+self.fuel)*THEFUCKINGSUN.mass)/(distance^2))) //newton's equations or sth
gravity_direction = torusDirection(self.x,self.y,thesun.x,thesun.y)
