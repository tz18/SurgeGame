//This script is a first stab at adding a single gravity source to the game. The rough idea is that it will pull the ship towards the nearest
//gravity object. This has some funky interactions with the world wrap, so it should probably be used sparingly on really small maps.

//TODO: Make the target object an argument. May also be worth making gravity sources as their own thing, with an optional sprite.

gravity = (point_distance(self.x,self.y,instance_nearest(self.x,self.y,THEFUCKINGSUN).x,instance_nearest(self.x,self.y,THEFUCKINGSUN).y)/gravityFactor)
gravity_direction = point_direction(self.x,self.y,instance_nearest(self.x,self.y,THEFUCKINGSUN).x,instance_nearest(self.x,self.y,THEFUCKINGSUN).y)
