//this script creates a new view when the edge of the window reaches the edge of the map
//so that the map wraps seamlessly
//windoww=window_get_width()
otherview=moduloButBetter(cameraview+1,2)
if ((x + (windowmapw/2)) > room_width){//if the right edge of the window is beyond the edge of the map 
                                       //(i.e. if the camera is approaching the right edge of the map
    view_xview[otherview]=0  //a new view is created on the right side of the window //showing the start (left side) of the map
    view_wview[otherview]=((x + (windowmapw/2)) - room_width) //its width depends on how much the right side of the window overshoots the map edge
    view_wport[otherview]=view_wview[otherview] * (windowscreenw / windowmapw) //width of the viewport is simply proportional the the amount of map it's showing
    view_xport[otherview]=windowscreenw-view_wport[otherview] //viewport grows leftwards taking up more of the screen
    
    view_hview[otherview]=windowmaph //all of this is for the y dimension so doesn't matter much yet
    view_yview[otherview]=0  
    view_hport[otherview]=windowscreenh
    view_yport[otherview]=0
    
    view_wview[cameraview]=windowmapw-view_wview[otherview]  //our old view takes up the rest of the window (shrinks to accomodate the new view)
    view_wport[cameraview]=view_xport[otherview] //old viewport shrinks to where the new viewport starts
    view_xport[cameraview]=0    //this is the left viewport in the window
    
    
    
    view_hborder[cameraview]=view_wview[cameraview] //the view still centers on the camera (not sure if this does anything)
    view_visible[otherview]=true
    middle=false
}
else if ((x - (windowmapw/2)) < 0){ //if the left edge of the window lands behind the start of the map 
    view_wview[otherview]=((windowmapw/2)-x) //we make a new view as big as how far behind the start the window edge is
    view_xview[otherview]=room_width-view_wview[otherview] //it displays as far left of the right side of the map as it is wide
    view_wport[otherview]=view_wview[otherview] * (windowscreenw / windowmapw) //viewport width again depends on the amount of map it's showing
    view_xport[otherview]=0 //this is the left view in the window
    
    view_hview[otherview]=windowmaph //y dimension stuff doesn't matter yet
    view_yview[otherview]=0
    view_hport[otherview]=windowscreenh
    view_yport[otherview]=0
    
    view_wview[cameraview]=windowmapw-view_wview[otherview] //width of the old view shrinks to accomodate the new one
    view_wport[cameraview]=windowscreenw-view_wport[otherview] //viewport shrinks too
    view_xport[cameraview]=view_wport[otherview] //old viewport moves to accomodate new viewport
    
    view_hborder[cameraview]=view_wview[cameraview] //better safe than sorry right
    view_visible[otherview]=true
    middle=false
}
else if not middle{  //if we're not straddling a seam don't show the other view (but only do this cleanup when we leave, not every cycle)
    view_visible[otherview]=false
    view_wview[cameraview]=windowmapw //view takes up the whole window
    view_wport[cameraview]=windowscreenw
    view_xport[cameraview]=0
    view_hborder[cameraview]=view_wview[cameraview] //hi mom
    middle=true
}
