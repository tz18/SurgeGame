target=instance_nearest(x, y, PlayerShip) //camera follows the player ship nearest it at initialization
windowmapw=2048 //width and height of the window in terms of 
windowmaph=1500 //how many map pixels it displays
windowscreenw=1024 //width and height of the window in terms of
windowscreenh=768 //how much of the OS screen it takes up
cameraarray[0,0]=0
cameraarray[1,0]=1
cameraarray[0,1]=2
cameraarray[1,1]=3
cameraviewx=0 //the camera is in view 0 at the start
cameraviewy=0
cameraview=cameraarray[cameraviewx,cameraviewy]
i=0
repeat 4{
    view_hborder[i] = windowmapw; //when following the camera, follow it exactly
    view_vborder[i] = windowmaph;
    i++
}

