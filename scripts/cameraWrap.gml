if x<0{  //this is the same as wrapBetter it just switches which view follows you when you wrap
    x=(room_width+x)
    view_object[cameraview]=noone
    cameraview=moduloButBetter(cameraview+1,2)
    view_object[cameraview]=Camera
   
}
if x>room_width{
    x=(x-room_width)
    view_object[cameraview]=noone
    cameraview=moduloButBetter(cameraview+1,2)
    view_object[cameraview]=Camera
}
if y<0{
    y=room_height
}
if y>room_height{
    y=0
}
