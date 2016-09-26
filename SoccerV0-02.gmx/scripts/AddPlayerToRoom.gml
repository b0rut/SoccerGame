var roomid = argument0;
var name = argument1;

for(var i=0; i < ds_list_size(global.rooms); i++) {

    var map = ds_list_find_value(global.rooms, i);
    
    if(roomid == ds_map_find_value(map, "id")) {
    
        var list = ds_map_find_value(map, "playerList");
        
        ds_list_add(list, name);
        show_debug_message("Player was created. " +string(ds_list_size(list)));
    }


}


