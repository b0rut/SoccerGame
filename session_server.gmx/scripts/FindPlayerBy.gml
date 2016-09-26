var type = argument0;
var socket = argument1;


for(var i=0; i < ds_list_size(global.playerList); i++) {

var map = ds_list_find_value(global.playerList, i);

if(type == "id") {
    if(ds_map_find_value(map, "socket") == socket) {
        
        return map;
    
    }
    else { 
        if(ds_map_find_value(map, "name") == type) {
        
        return map;
        
        }
    }

}



}
