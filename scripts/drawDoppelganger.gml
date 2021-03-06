if (x + sprite_width - sprite_xoffset) > room_width{ //if the sprite is "peeking" over the seam
    drawx=0-(room_width-x) //draw a dummy sprite on the other side that will complete it
    draw_sprite_ext(sprite_index, image_index, drawx, y, 1, 1, image_angle, -1, 1)
}
else if (x - sprite_xoffset) < 0{ //above was for right-left side, this is for left-right
    drawx=room_width+x 
    draw_sprite_ext(sprite_index, image_index, drawx, y, 1, 1, image_angle, -1, 1)
}
if (y + sprite_height - sprite_yoffset) > room_height{ //ditto for the y dimension
    drawy=0-(room_height-y)
    draw_sprite_ext(sprite_index, image_index, x, drawy, 1, 1, image_angle, -1, 1)
}
else if (y - sprite_yoffset) < 0{
    drawy=room_height+y 
    draw_sprite_ext(sprite_index, image_index, x, drawy, 1, 1, image_angle, -1, 1)
}
draw_self() //important
