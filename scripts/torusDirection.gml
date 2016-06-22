//torusDirection(ax,ay,bx,by)
//returns the direction (angle) from one point to another but respects wrapping

ax=argument0
ay=argument1
bx=argument2
by=argument3

dx=circularDistance(ax,bx,room_width)
dy=circularDistance(ay,by,room_height)

return point_direction(ax,ay,ax+dx,ay+dy)
