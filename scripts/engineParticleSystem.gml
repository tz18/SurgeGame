engineParticles = part_system_create(); //Initialize a particle system
part_system_depth(engineParticles,1); //We want to draw it below the ship
part_system_position(engineParticles,0,0); //Relative offset of the particles from 0,0 (top left corner of the room). Do not touch.
particle_engineflame = part_type_create(); //Initialize the engineflame particle type
part_type_shape(particle_engineflame,pt_shape_pixel); 
part_type_scale(particle_engineflame,1,2);
part_type_size(particle_engineflame,1,2,-0.001,0);
part_type_colour2(particle_engineflame,128,33023);
part_type_alpha2(particle_engineflame,1,0.6); //Transparency from start to end
part_type_speed(particle_engineflame,self.speed+8,self.speed+16,0,0);
part_type_direction(particle_engineflame,self.image_angle-175, self.image_angle-185,0,0);
part_type_life(particle_engineflame,4,6);
engine1 = part_emitter_create(engineParticles);
engine2 = part_emitter_create(engineParticles);
