//torusDistance(ax,ay,bx,by)
//circularDistance was for one dimension, here we basically calculate point_distance
//but with our toroidal map

ax=argument0
ay=argument1
bx=argument2
by=argument3

dx=circularDistance(ax,bx,room_width)//Get distance vector to the target
dy=circularDistance(ay,by,room_height)//even if over a wrap seam

return(point_distance(ax,ay,(ax+dx),(ay+dy)))
