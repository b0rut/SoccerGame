//returns players channel ID

var soc = argument0;

for(var i=0; i < ds_list_size(global.m_players); i++) 
{
var checked_soc = ds_map_find_value(FindPlayer(i), "Socke_IDt");

if(checked_soc == soc) {

var players_channel_id = ds_map_find_value(FindPlayer(i), "Channel_ID");

return players_channel_id;
}

}