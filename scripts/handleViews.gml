//this script creates a new view when the edge of the window reaches the edge of the map
//so that the map wraps seamlessly
windoww=window_get_width()
otherview=moduloButBetter(cameraview+1,2)
if ((x + (windowmapw/2)) > room_width){//if the right edge of the window is beyond the edge of the map
    view_xview[otherview]=0  //a new view is created on the right showing the
    view_yview[otherview]=0  //start of the map again
    view_wview[otherview]=((x + (windowmapw/2)) - room_width) //the width is how much past the end of the map the edge of the window is
    view_hview[otherview]=windowmaph
    view_wport[otherview]=view_wview[otherview] * (windowscreenw / windowmapw) //width of the port depends on how much of the map is being shown by it
    view_hport[otherview]=windowscreenh 
    view_xport[otherview]=windowscreenw-view_wport[otherview] //port grows leftwards taking up more of the screen
    view_yport[otherview]=0
    
    view_wview[cameraview]=windowmapw-view_wview[otherview]  //our old view is shrunk to accomodate the other view
    view_wport[cameraview]=windowscreenw-view_wport[otherview] //so is its viewport
    view_xport[cameraview]=0    //this is the left view
    
    
    view_visible[otherview]=true
}
else if ((x - (windowmapw/2)) < 0){ //if the left edge of the window is past the start of the map 
    view_wview[otherview]=((windowmapw/2)-x) //we make a new view as big as how far past the start the window edge is
    view_hview[otherview]=windowmaph
    view_xview[otherview]=room_width-view_wview[otherview] //it displays as far left of the right side of the map as it is wide
    view_yview[otherview]=0
    view_wport[otherview]=view_wview[otherview] * (windowscreenw / windowmapw) //width of port depends on width of view in mapunits
    view_hport[otherview]=windowscreenh
    view_xport[otherview]=0 //this is the left view
    view_yport[otherview]=0
    
    view_wview[cameraview]=windowmapw-view_wview[otherview] //width of the old view shrinks to accomodate the new one
    view_wport[cameraview]=windowscreenw-view_wport[otherview] //ditto
    view_xport[cameraview]=view_wport[otherview] //old viewport moves to accomodate new viewport
    
    view_visible[otherview]=true
}
else {  //if we're not straddling a seam don't show the other view
    view_visible[otherview]=false  
    view_wview[cameraview]=windowmapw
    view_wport[cameraview]=windowscreenw
}
