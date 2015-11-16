//Smooth targeting: 
//Target is the object this should follow
//x and y is camera x and y
//May try replacing 400 with 200 and 100 with 50

if not instance_exists(target){ //If the target gets removed, stop following it
    hspeed=0 //Stop moving the camera
    vspeed=0
    return false //Don't do any of this other stuff
}

speedcap=400
accelerationfactor=1000000
    
var temp_x,temp_y; temp_x=target.x-x temp_y=target.y-y //Get distance vector to the target
if abs(temp_x)>speedcap temp_x=speedcap*sign(temp_x) //Distances to the target greater than the speedcap will not make the camera move faster
if abs(temp_y)>speedcap temp_y=speedcap*sign(temp_y) //effectively setting its max speed
hspeed+=sqrt(abs(temp_x/accelerationfactor))*temp_x //if the target is close, the camera moves slowly
vspeed+=sqrt(abs(temp_y/accelerationfactor))*temp_y //but as the target becomes farther away, the camera matches its speed
//the bigger the accelerationfactor is the more of an acceleration curve there is for the camera
hspeed*=.5
vspeed*=.5 

//From StorkEXEC http://gmc.yoyogames.com/index.php?showtopic=470656#entry3827931
