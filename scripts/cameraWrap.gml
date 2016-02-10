if x<0{  //this is the same as wrapBetter it just switches which view follows you when you wrap
    x=(room_width+x) //put the camera as far to the left of the right edge of the map as it was to the left edge
    view_object[cameraview]=noone //the view which the camera just left shouldn't track the camera anymore
    cameraviewx=moduloButBetter(cameraviewx+1,2) //the index of the view with the camera in it is now that of the one to the left
    cameraview=cameraarray[cameraviewx,cameraviewy] //get that index from our array of views
    view_object[cameraview]=Camera
}
if x>room_width{
    x=(x-room_width) //put the camera as far to the right of the left edge of the map as it was to the right edge
    view_object[cameraview]=noone //stop tracking camera in the old view
    cameraviewx=moduloButBetter(cameraview+1,2) //change which view we know has the camera in it
    cameraview=cameraarray[cameraviewx,cameraviewy]
    view_object[cameraview]=Camera
}
if y<0{
    y=(room_height+y) //same deal but for up and down
    view_object[cameraview]=noone
    cameraviewy=moduloButBetter(cameraviewy+1,2) //look above the old camera view in the array of views for the new cameraview's index
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
