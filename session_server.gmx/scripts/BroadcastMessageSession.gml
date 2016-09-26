var sessionID = argument0; //we pass the id of the session so we will only send a message to player inside it

var session_map = ds_list_find_value(m_sessions, sessionID);
var player_list_id = ds_map_find_value(session_map, "Players");

for(i=0; i < ds_map_find_value(session_map, "ChannelCurrentSlots"); i++) {
{
var socket = ds_list_find_value(player_list_id, i);
network_send_packet(socket, m_buffer, buffer_tell(m_buffer));

}

}