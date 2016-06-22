draw_healthbar(10, 10, 20, 100, self.fuel, c_black, c_yellow, c_yellow, 3, true, true) //Draws a healthbar in the top left corner of the screen.
draw_set_color(c_white)
draw_text(20,10,"x,y: "+string(x)+","+string(y))
draw_set_color(c_green)
draw_text(20,30,"best lap time: "+string(bestlaptime))
draw_set_color(c_yellow)
draw_text(20,20,"last lap time: "+string(lastlaptime))
if lastlaptime!=0{
    if laptime < bestlaptime{ //the color of our current lap time changes from green to blue to yellow to red
        draw_set_color(merge_color(c_green,c_blue, min((laptime/bestlaptime),1))) 
    } //as it passes from being under the best lap, under the last lap, and then over the last lap
    else if (laptime < lastlaptime) {
        draw_set_color(merge_color(c_blue,c_yellow, min(((laptime-bestlaptime)/(lastlaptime-bestlaptime)),1)))
    }
    else {
        draw_set_color(merge_color(c_red,c_yellow, max((lastlaptime/laptime),0)))
    }
}
else{
    draw_set_color(c_blue)
    }
draw_text(20,40,"total lap time: "+string(laptime))


