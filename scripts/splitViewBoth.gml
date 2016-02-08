///splitViewBoth(camerax,cameray,tl,tr,bl,br)
//camerax should be in the range room_width-(windowmapw/2)<camerax<room_width+(windowmapw/2)
//cameray should be in the range room_height-(windowmaph/2) < cameray < room_height+(windowmaph/2), i.e. not wrapped at 0, 
//i.e. if the camera is below the map seam cameray should be = y+room_height
                         
var camerax=argument0,cameray=argument1,tl=argument2,tr=argument3,bl=argument4,br=argument5;                                

view_xview[br]=0  //this is the bottom right view
view_wview[br]=((camerax + (windowmapw/2)) - room_width) //and basically it's just the x dimension code for right and the y dimension code for bottom from splitViewX and splitViewY
view_wport[br]=view_wview[br] * (windowscreenw / windowmapw) //we do this one first because all our other views get defined in terms of this window
view_xport[br]=windowscreenw-view_wport[br] 

view_yview[br]=0  
view_hview[br]=((cameray + (windowmaph/2)) - room_height)
view_hport[br]=view_hview[br] * (windowscreenh / windowmaph) 
view_yport[br]=windowscreenh-view_hport[br]

view_xview[bl]=(camerax-(windowmapw/2)) //bottom left view
view_wview[bl]=windowmapw-view_wview[br]  //shift it left of the right view
view_wport[bl]=view_xport[br] 
view_xport[bl]=0

view_yview[bl]=0  
view_hview[bl]=((cameray + (windowmaph/2)) - room_height) 
view_hport[bl]=view_hview[bl] * (windowscreenh / windowmaph) 
view_yport[bl]=windowscreenh-view_hport[bl]

view_xview[tr]=view_xview[br] //right is right
view_wview[tr]=view_wview[br]
view_wport[tr]=view_wport[br]
view_xport[tr]=view_xport[br]

view_yview[tr]=(cameray-(windowmaph/2)) //shift it above the bottom view
view_hview[tr]=windowmaph-view_hview[br] 
view_hport[tr]=view_yport[br] 
view_yport[tr]=0    

view_xview[tl]=view_xview[bl] //left is left
view_wview[tl]=view_wview[bl]
view_wport[tl]=view_wport[bl]
view_xport[tl]=view_xport[bl]

view_yview[tl]=view_yview[tr] //top is top
view_hview[tl]=view_hview[tr]
view_hport[tl]=view_hport[tr]
view_yport[tl]=view_yport[tr]
