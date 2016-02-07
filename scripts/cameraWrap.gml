if x<0{  //this is the same as wrapBetter it just switches which view follows you when you wrap
    x=(room_width+x)
    view_object[cameraview]=noone
    cameraviewx=moduloButBetter(cameraviewx+1,2)
    cameraview=cameraarray[cameraviewx,cameraviewy]
    view_object[cameraview]=Camera
}
if x>room_width{
    x=(x-room_width)
    view_object[cameraview]=noone
    cameraviewx=moduloButBetter(cameraview+1,2)
    cameraview=cameraarray[cameraviewx,cameraviewy]
    view_object[cameraview]=Camera
}
if y<0{
    y=(room_height+y)
    view_object[cameraview]=noone
    cameraviewy=moduloButBetter(cameraviewy+1,2)
    cameraview=cameraarray[cameraviewx,cameraviewy]
    view_object[cameraview]=Camera
}
if y>room_height{
    y=(y-room_height)
    view_object[cameraview]=noone
    cameraviewy=moduloButBetter(cameraviewy+1,2)
    cameraview=cameraarray[cameraviewx,cameraviewy]
    view_object[cameraview]=Camera
}
