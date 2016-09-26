var xx = argument0;
var yy = argument1;
var yyy = yy
var size = ds_list_size(global.lines) - 1;
draw_clear_alpha(c_white, 0);
for(var i = size; i >= 0 ; i--) {

    var map = ds_list_find_value(global.lines, i);
    var pname = ds_map_find_value(map, "pname");
    var pcolor = ds_map_find_value(map, "pcolor");
    var text = ds_map_find_value(map, "text");
    var tcolor = ds_map_find_value(map, "tcolor");
     var str = string(pname) + " : ";
       // Use the yy variable to store the next position to draw in
       yy -= string_height(str) + 8; // The 8 here is for a little displacement

        draw_set_halign(fa_left);
        draw_set_color(pcolor);
        draw_set_font(fnt_name);
       

        draw_text(xx, yy, str);

        draw_set_color(tcolor);
        draw_set_font(fnt_text);
        // Btw, why *1?
        draw_text(xx + string_width(str)*1 , yy,  text);
}
