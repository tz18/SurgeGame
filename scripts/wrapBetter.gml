if x<0{ //if the object is over the seam put it on the other side
    x=(room_width+x)
}
if x>room_width{
    x=(x-room_width)
}
if y<0{
    y=(room_height+y)
}
if y>room_height{
    y=(y-room_height)
}
