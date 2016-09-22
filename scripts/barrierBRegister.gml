//barrierBRegister(wallnumber,sequencenumber)
//adds this BarrierB object's position as a vertex to the right wall at the right place in the list
//right now, after this function is called barrierB objects don't really do anything else
//they're really just markers to let you draw walls easier in the room editor

wall=room.barriers[argument0]
sequencenumber=argument1
var pos;
pos[0]=self.x
pos[1]=self.y
ds_list_add(wall.vertexes,pos) 
//the position is added to the wall's list of vertexes as a small array of its x,y

//debugging
howmany = "how many vertexes: " + string(ds_list_size(wall.vertexes))
show_debug_message(howmany);
