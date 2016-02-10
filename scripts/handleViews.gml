//this script creates new views when the edge of the window reaches the edge of the map
//so that the map wraps seamlessly in all directions

//so, in gamemaker every view has an index number that we use to accessit
//here we keep track of which view[index] has the camera in it, and generally where the other views are
//using the array we made in initializeCamera
//so that we don't have to move views around as much, and know which one should be tracking our camera
cameraview=cameraarray[cameraviewx,cameraviewy] //cameraviewx/y are updated in cameraWrap, whenever the camera crosses a seam
otherxview=cameraarray[moduloButBetter(cameraviewx+1,2),cameraviewy]  //these just decide which other views we will use as left/right of...
otheryview=cameraarray[cameraviewx,moduloButBetter(cameraviewy+1,2)] //...above/below
othercornerview=cameraarray[moduloButBetter(cameraviewx+1,2),moduloButBetter(cameraviewy+1,2)] //...or diagonally opposite to the cameraview, if needed

if ((x + (windowmapw/2)) > room_width){//if the right edge of the window is beyond the edge of the map 
                                       //(i.e. if the camera is approaching the right edge of the map    
    if ((y + (windowmaph/2)) > room_height){ //if the camera is also near the bottom of the map (we will need to show four views)
        splitViewBoth(x,y,cameraview,otherxview,otheryview,othercornerview) //does all the hard work of setting up the four views, the order of the arguments matters!
        view_visible[otherxview]=true //all four views should be visible (cameraview is always visible)
        view_visible[otheryview]=true
        view_visible[othercornerview]=true
    }
    else if ((y - (windowmaph/2)) < 0){ //if camera is near the top of the map (we will also need to show four views)
        splitViewBoth(x,(room_height+y),otheryview,othercornerview,cameraview,otherxview) //if we treat y's that are near 0 as room_height+y, we can /
        view_visible[otherxview]=true                                                     //use the same function to figure out the views in both situations, making everything easier /
        view_visible[otheryview]=true                                                     //we need to swap the arguments so that the cameraview and the view beside it are on the bottom though
        view_visible[othercornerview]=true
    }
    else{ //if camera isn't near the top or bottom of the map, it's just near a side (we just need two views then)
        splitViewX(x,cameraview,otherxview) //this does all the hard work but just for the horizontal case
        view_visible[otherxview]=true
        view_visible[otheryview]=false
        view_visible[othercornerview]=false
    }
    
    view_hborder[cameraview]=view_wview[cameraview] //the view still centers on the camera (not sure if this does anything)

}
else if ((x - (windowmapw/2)) < 0){ //if the left edge of the window lands behind the start of the map
    
    if ((y + (windowmaph/2)) > room_height){ //near the top? (four views)
        splitViewBoth((room_width+x),y,otherxview,cameraview,othercornerview,otheryview) //we pass x as room_width+x because it's near 0 /
        view_visible[otherxview]=true                                                    //and we swap the arguments so the cameraview and the view below it are on the right
        view_visible[otheryview]=true
        view_visible[othercornerview]=true
    }
    else if ((y - (windowmaph/2)) < 0){ //near the bottom? (four views)
        splitViewBoth((room_width+x),(room_height+y),othercornerview,otheryview,otherxview,cameraview) //x is room_width+x and y is room_height+y /
        view_visible[otherxview]=true //and we swap the arguments left and right and up and down
        view_visible[otheryview]=true
        view_visible[othercornerview]=true
    }
    else{ //not near the top or bottom (just two)
        splitViewX((room_width+x),otherxview,cameraview) //x is room_width+x and cameraview is on the right
        view_visible[otherxview]=true
        view_visible[otheryview]=false
        view_visible[othercornerview]=false
    }    
    
    view_hborder[cameraview]=view_wview[cameraview]
    
}
else if ((y + (windowmaph/2)) > room_height){ //if the camera is near the top but not near the sides of the map (two views)
    splitViewY(y,cameraview,otheryview) //this does the hard work vertically
    
    view_vborder[cameraview]=view_hview[cameraview]
    view_visible[otherxview]=false
    view_visible[othercornerview]=false
    view_visible[otheryview]=true
}
else if ((y - (windowmaph/2)) < 0){  //if the camera is near the bottom, but not the sides (two views)
    splitViewY((y+room_height),otheryview,cameraview) //swap the arguments and treat y as y+room_height
    
    view_vborder[cameraview]=view_hview[cameraview] //view should center on the camera
    view_visible[otherxview]=false
    view_visible[othercornerview]=false
    view_visible[otheryview]=true
}
else {  //if we're not near a seam, we just show one view like a normal, simple game that hasn't totally overcomplicated itself from the get-go
    view_visible[otherxview]=false //don't need these
    view_visible[otheryview]=false
    view_visible[othercornerview]=false
    view_wview[cameraview]=windowmapw //view takes up the whole window
    view_wport[cameraview]=windowscreenw
    view_hview[cameraview]=windowmaph
    view_hport[cameraview]=windowscreenh
    view_xport[cameraview]=0 //view should start at the beginning of the window
    view_yport[cameraview]=0
    view_object[cameraview]=Camera //follow the camera
    view_hborder[cameraview]=view_wview[cameraview] //hi mom
    view_vborder[cameraview]=view_hview[cameraview]
}
