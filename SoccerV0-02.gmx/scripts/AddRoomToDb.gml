var name = argument0;
var mp = argument1;
var json_plist = argument2;
var map = ds_map_create();
var plist = ds_list_create();

show_debug_message(json_plist);
var decode = json_decode(json_plist);
var list = ds_map_find_value(decode, "plist");
for(var i=0; i < ds_list_size(list); i++) {

    ds_list_add(plist, ds_list_find_value(list, i));

}

ds_map_add(map, "name", name);
ds_map_add(map, "mp", mp);
ds_map_add_list(map, "playerList", plist); 
ds_map_add(map, "id", ds_list_size(global.rooms));
ds_list_add(global.rooms, map);
show_debug_message("Room was created. " +string(ds_list_size(global.rooms)));


