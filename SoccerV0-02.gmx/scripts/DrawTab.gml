draw_set_color(c_white); //setting the default white color as primary
var offset_y = 64;  //we have to calculate the y offset where exactly we want tabs to appear
for(var i=0; i < ds_list_size(tab_list); i++) {    //A loop, while i isn't smaller than the amount of our tabs in data structure 
    var tab_map = ds_list_find_value(tab_list, i);  //let's get indetification of the map where we have stored information before
    var name = ds_map_find_value(tab_map, "name"); //let's fetch the name
    var selected = ds_map_find_value(tab_map, "selected");   //And aswell selected value
   draw_set_font(fnt_tabs);
       //the following step will check whether the tab is selected or not and set its font color to black if selected and if not to white
      if(selected == true) {
    draw_set_color(c_black); 
    }
    else {
        var color = make_color_rgb(0, 107, 135);
        draw_set_color(color); 
        }
    
                                 //everytime i increases, also does the xstart value of each next tab
    draw_sprite(spr_tab, selected , 180 + ( i * sprite_get_width(spr_tab)), y + offset_y );    //draws tabs 
    draw_set_halign(fa_center);             //sets text alligment to center 
    draw_text((180 + ( i * sprite_get_width(spr_tab))) + sprite_get_width(spr_tab) / 2, y + offset_y + 30, name);     //draws the name of the tab

}
