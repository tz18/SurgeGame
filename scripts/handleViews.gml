//this script creates a new view when the edge of the window reaches the edge of the map
//so that the map wraps seamlessly
cameraview=cameraarray[cameraviewx,cameraviewy]
otherxview=cameraarray[moduloButBetter(cameraviewx+1,2),cameraviewy]  
otheryview=cameraarray[cameraviewx,moduloButBetter(cameraviewy+1,2)]
othercornerview=cameraarray[moduloButBetter(cameraviewx+1,2),moduloButBetter(cameraviewy+1,2)]

if ((x + (windowmapw/2)) > room_width){//if the right edge of the window is beyond the edge of the map 
                                       //(i.e. if the camera is approaching the right edge of the map    
    if ((y + (windowmaph/2)) > room_height){
        splitViewBoth(x,y,cameraview,otherxview,otheryview,othercornerview)
        view_visible[otherxview]=true
        view_visible[otheryview]=true
        view_visible[othercornerview]=true
    }
    else if ((y - (windowmaph/2)) < 0){
        splitViewBoth(x,(room_height+y),otheryview,othercornerview,cameraview,otherxview)
        view_visible[otherxview]=true
        view_visible[otheryview]=true
        view_visible[othercornerview]=true
    }
    else{
        splitViewX(x,cameraview,otherxview)
        view_visible[otherxview]=true
        view_visible[otheryview]=false
        view_visible[othercornerview]=false
    }
    
    view_hborder[cameraview]=view_wview[cameraview] //the view still centers on the camera (not sure if this does anything)

}
else if ((x - (windowmapw/2)) < 0){ //if the left edge of the window lands behind the start of the map
    if ((y + (windowmaph/2)) > room_height){
        splitViewBoth((room_width+x),y,otherxview,cameraview,othercornerview,otheryview)
        view_visible[otherxview]=true
        view_visible[otheryview]=true
        view_visible[othercornerview]=true
    }
    else if ((y - (windowmaph/2)) < 0){
        splitViewBoth((room_width+x),(room_height+y),othercornerview,otheryview,otherxview,cameraview)
        view_visible[otherxview]=true
        view_visible[otheryview]=true
        view_visible[othercornerview]=true
    }
    else{
        splitViewX((room_width+x),otherxview,cameraview)
        view_visible[otherxview]=true
        view_visible[otheryview]=false
        view_visible[othercornerview]=false
    }    
    
    view_hborder[cameraview]=view_wview[cameraview]
    
}
else if ((y + (windowmaph/2)) > room_height){    
    splitViewY(y,cameraview,otheryview)
    
    view_vborder[cameraview]=view_hview[cameraview]
    view_visible[otherxview]=false
    view_visible[othercornerview]=false
    view_visible[otheryview]=true
}
else if ((y - (windowmaph/2)) < 0){  
    splitViewY((y+room_height),otheryview,cameraview)
    
    view_vborder[cameraview]=view_hview[cameraview]
    view_visible[otherxview]=false
    view_visible[othercornerview]=false
    view_visible[otheryview]=true
}
else {  //if we're not straddling a seam don't show the other view
    view_visible[otherxview]=false
    view_visible[otheryview]=false
    view_visible[othercornerview]=false
    view_wview[cameraview]=windowmapw //view takes up the whole window
    view_wport[cameraview]=windowscreenw
    view_hview[cameraview]=windowmaph
    view_hport[cameraview]=windowscreenh
    view_xport[cameraview]=0
    view_yport[cameraview]=0
    view_object[cameraview]=Camera
    view_hborder[cameraview]=view_wview[cameraview] //hi mom
    view_vborder[cameraview]=view_hview[cameraview]
}
