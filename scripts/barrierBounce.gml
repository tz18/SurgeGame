//barrierBounce(x1,y1,x2,y2,ship)
//the first coordinates are the line segment of the barrier being bounced against
//the ship is the ship that is bouncing off

ax1=argument0 //the barrier line we call the vector "A"
ay1=argument1
ax2=argument2
ay2=argument3

ship=argument4 //the ship which is bouncing
sx=ship.hspeed //the x and y of its vector are its speeds
sy=ship.vspeed

magnitudeofa= sqrt((power((ax2-ax1),2))+(power((ay2-ay1),2))) //here we determine the length of A             //big up to my homie pythagoras from grade 10
unvx=((-(ay2-ay1))/magnitudeofa) //unit normal vector of A is A recentered on the origin...
unvy=((ax2-ax1)/magnitudeofa) //shrunk to between 0 and 1 by dividing by its length...
                             //and with its coordinates reversed and one axis negated.
                             //this basically gives us the direction perpendicular to A

//next we project the vector of the ship's velocity onto the unit normal vector of A
//using the formula (SV dot UNV(A))*UNV(A). 
dp=dot_product(sx, sy, unvx, unvy)
pvx=dp*unvx
pvy=dp*unvy

//this has given us the component of the ship's velocity that is along the normal of A
//we subtract that component from its total velocity twice to flip it
nx=sx-(2*pvx)
ny=sy-(2*pvy)

//so we have flipped the component of the ship's velocity that is driving against the barrier
//but preserved the part that was going parallel to the barrier

ship.hspeed=nx
ship.vspeed=ny

show_debug_message("barrier bounce babY!!!")
