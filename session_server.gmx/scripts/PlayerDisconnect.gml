var soc = argument0 // we need a socket id to kick the player and delete the map

//first we have to search for a player

ds_list_delete(m_players, soc);
ds_map_destroy(FindPlayer(soc));
network_destroy(soc);