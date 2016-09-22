//To be placed in the Draw event of a barrierA.
draw_set_color(c_green);
draw_primitive_begin(pr_linestrip) //a linestrip is a series of line segments
draw_vertex(self.x, self.y); //draw the first vertex (BarrierA's vertex)
for (i = 0; i < ds_list_size(self.vertexes); i += 1) //draw the rest of the vertexes
    {   
        pos=ds_list_find_value(self.vertexes,i)
        draw_vertex(pos[0], pos[1])
    }
draw_primitive_end() //draw the line
