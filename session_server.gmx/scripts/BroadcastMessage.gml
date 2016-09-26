for(var i=0; i < ds_list_size(m_players); i++) //we should query for all people to send a message to them
{
var socket = ds_map_find_value(FindPlayer(i), "Socket"); 
network_send_packet(socket, m_buffer, buffer_tell(m_buffer));

}