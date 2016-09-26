var socket = argument0; 

for(var i=0; i < ds_list_size(global.m_players); i++) {

var player = ds_list_find_value(global.m_players, i);
if(ds_map_find_value(player, "Socket_ID") == socket) 
{
return player;

}

}