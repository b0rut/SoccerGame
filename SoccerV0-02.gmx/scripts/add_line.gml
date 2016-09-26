var pname = argument0;
var pcolor = argument1;
var text = argument2;
var tcolor = argument3;

var map = ds_map_create();

ds_map_add(map, "pname", pname);
ds_map_add(map, "pcolor", pcolor);
ds_map_add(map, "text", text);
ds_map_add(map, "tcolor", tcolor);

ds_list_add(global.lines, map);
