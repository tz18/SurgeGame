//this script creates a new view when the edge of the window reaches the edge of the map
//so that the map wraps seamlessly
windoww=window_get_width()
if ((x + (windowmapw/2)) > room_width){
    view_xview[1]=0
    view_yview[1]=0
    view_wview[1]=((x + (windowmapw/2)) - room_width)
    view_hview[1]=windowmaph
    view_wport[1]=view_wview[1] * (windowscreenw / windowmapw)
    view_hport[1]=windowscreenh
    view_xport[1]=windowscreenw-view_wport[1]
    view_yport[1]=0
    
    view_wview[0]=windowmapw-view_wview[1]
    view_wport[0]=windowscreenw-view_wport[1]
    view_xport[0]=0    
    view_visible[1]=true
}
else if ((x - (windowmapw/2)) < 0){
    view_wview[1]=((windowmapw/2)-x)
    view_hview[1]=windowmaph
    view_xview[1]=room_width-view_wview[1]
    view_yview[1]=0
    view_wport[1]=view_wview[1] * (windowscreenw / windowmapw)
    view_hport[1]=windowscreenh
    view_xport[1]=0
    view_yport[1]=0
    
    view_wview[0]=windowmapw-view_wview[1]
    view_wport[0]=windowscreenw-view_wport[1]
    view_xport[0]=view_wport[1]
    view_visible[1]=true
}
else {
    view_visible[1]=false
    view_wview[0]=windowmapw
    view_wport[0]=windowscreenw
}
