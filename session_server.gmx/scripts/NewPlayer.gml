var socket = argument0;

var player = ds_map_create();
ds_map_add(player, "socket", socket);
ds_map_add(player, "name", "");
ds_map_add(player, "roomid", -1);
ds_map_add(player, "level", -1);
ds_map_add(player, "wins", -1);
ds_map_add(player, "looses", -1);
ds_map_add(player, "id", ds_list_size(global.playerList));
ds_list_add(global.playerList, player);



