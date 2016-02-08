///splitViewX(camerax,leftview,rightview)
//camerax should be given in the range room_width-(windowmapw/2) < camerax < room_width+(windowmapw/2), i.e. not wrapped at 0, 
//i.e. if the camera is right of the map seam camerax should be = x+room_width
                         
var camerax=argument0,leftview=argument1,rightview=argument2;                                  
view_xview[rightview]=0  //a new view is created on the right side of the window //showing the start (left side) of the map
view_wview[rightview]=((camerax + (windowmapw/2)) - room_width) //its width depends on how much the right side of the window overshoots the map edge
view_wport[rightview]=view_wview[rightview] * (windowscreenw / windowmapw) //width of the viewport is simply proportional the the amount of map it's showing
view_xport[rightview]=windowscreenw-view_wport[rightview] //viewport grows leftwards taking up more of the screen

view_xview[leftview]=(camerax-(windowmapw/2))
view_wview[leftview]=windowmapw-view_wview[rightview]  //our old view takes up the rest of the window (shrinks to accomodate the new view)
view_wport[leftview]=view_xport[rightview] //old viewport shrinks to where the new viewport starts
view_xport[leftview]=0    //this is the left viewport in the window

view_hview[rightview]=windowmaph
view_yview[rightview]=max(min((y-(windowmaph/2)),(room_height-windowmaph)),0) //temporary until y dimension coded
view_hport[rightview]=windowscreenh
view_yport[rightview]=0
    
view_hview[leftview]=windowmaph
view_yview[leftview]=max(min((y-(windowmaph/2)),(room_height-windowmaph)),0)
view_hport[leftview]=windowscreenh
view_yport[leftview]=0
