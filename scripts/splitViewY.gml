///splitViewY(cameray,topview,bottomview)
//cameray should be given in the range room_height-(windowmaph/2) < cameray < room_height+(windowmaph/2), i.e. not wrapped at 0, 
//i.e. if the camera is below the map seam cameray should be = y+room_height
                         
var cameray=argument0,topview=argument1,bottomview=argument2;                                
view_yview[bottomview]=0  //a new view is created on the bottom of the window //showing the start (top) of the map
view_hview[bottomview]=((cameray + (windowmaph/2)) - room_height) //its height depends on how much the bottom side of the window overshoots the map edge
view_hport[bottomview]=view_hview[bottomview] * (windowscreenh / windowmaph) //height of the viewport is simply proportional the the amount of map it's showing
view_yport[bottomview]=windowscreenh-view_hport[bottomview] //viewport grows upwards taking up more of the screen

view_yview[topview]=(cameray-(windowmaph/2))
view_hview[topview]=windowmaph-view_hview[bottomview]  //our old view takes up the rest of the window (shrinks to accomodate the new view)
view_hport[topview]=view_yport[bottomview] //old viewport shrinks to where the new viewport starts
view_yport[topview]=0    //this is the top viewport in the window

view_wview[bottomview]=windowmapw
view_xview[bottomview]=max(min((x-(windowmapw/2)),(room_width-windowmapw)),0)
view_wport[bottomview]=windowscreenw
view_xport[bottomview]=0
    
view_wview[topview]=windowmapw
view_xview[topview]=max(min((x-(windowmapw/2)),(room_width-windowmapw)),0)
view_wport[topview]=windowscreenw
view_xport[topview]=0        

