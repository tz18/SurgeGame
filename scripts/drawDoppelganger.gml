if (x + sprite_width - sprite_xoffset) > room_width{
    drawx=0-(room_width-x)
    draw_sprite_ext(sprite_index, image_index, drawx, y, 1, 1, image_angle, -1, 1)
}
else if (x - sprite_xoffset) < 0{
    drawx=room_width+x
    draw_sprite_ext(sprite_index, image_index, drawx, y, 1, 1, image_angle, -1, 1)
}
draw_self()
