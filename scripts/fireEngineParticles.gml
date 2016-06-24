//Creates the engine particle emitters roughly where the engines appear on the sprite facing upwards. This only works as intended when the sprite is facing up.
//The current particle configuration is intentionally small to make it easier to figure out what direction they're facing.

imageAngleRad = degtorad(self.image_angle); //image_angle returns in degrees, and the trig functions work in radians, so we convert the degrees to radians to avoid repeating the operation four times.

testXOffset = cos(imageAngleRad)*engineLeftOffset - sin(imageAngleRad)*engineVerticalOffset;

leftXOffset = self.x+cos(imageAngleRad)*engineVerticalOffset - sin(imageAngleRad)*engineLeftOffset;
leftYOffset = self.y-sin(imageAngleRad)*engineVerticalOffset - cos(imageAngleRad)*engineLeftOffset;

rightXOffset = self.x+cos(imageAngleRad)*engineVerticalOffset - sin(imageAngleRad)*engineRightOffset;
rightYOffset = self.y-sin(imageAngleRad)*engineVerticalOffset - cos(imageAngleRad)*engineRightOffset;

part_emitter_region(engineParticles,engine1,leftXOffset,leftXOffset,leftYOffset,leftYOffset,ps_shape_rectangle,ps_distr_linear); //Creates/moves a point, known as engine1, to roughly where the red left engine on the sprite is when facing up.
part_emitter_region(engineParticles,engine2,rightXOffset,rightXOffset,rightYOffset,rightYOffset,ps_shape_rectangle,ps_distr_linear); //As above, with the right engine.
part_type_direction(particle_engineflame,self.image_angle-185, self.image_angle-175,0,0); //corrects the direction of the engine thrust particle effect to be a 10 degree cone opposite to the facing direction.
part_type_gravity(particle_engineflame, gravity*10, gravity_direction);
part_emitter_burst(engineParticles,engine1,particle_engineflame,10); //Fires the left engine with ten particles in the burst.
part_emitter_burst(engineParticles,engine2,particle_engineflame,10); //Fires the right engine.
