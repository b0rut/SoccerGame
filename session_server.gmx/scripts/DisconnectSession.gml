var socketid;

socketid = argument0;
sessionid = FindPlayerSession(socketid);

//let's remove player from session and tell everyone that he has disconnected
var session_map = ds_list_find_value(global.m_session, sessionid);
var player_channelListID = ds_map_find_value(session_map, "Players");
for(var i=0; i < ds_list_size(player_channelListID); i++) {

if(ds_list_find_value(player_channelListID, i) == socketid) {
ds_list_delete(player_channelListID, i);
ds_map_replace(FindPlayer(i), "Channel_ID", -1);

return true;

}
else {

return false;
}
}