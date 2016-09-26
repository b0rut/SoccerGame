//sends a sessionlist whether requested

var socket = argument0;
var message_id = argument1;




for(var i=0; i < ds_list_size(global.m_sessions); i++) {
if(!is_undefined(ds_map_find_value(FindSession(i), "Channel_ID")))
{
show_message("kanalid: "+real(ds_map_find_value(FindSession(i), "Channel_ID")))
buffer_seek(m_buffer, buffer_seek_start, 0);
buffer_write(m_buffer, buffer_u8, message_id);
buffer_write(m_buffer, buffer_s8, ds_map_find_value(FindSession(i), "Channel_ID"));
buffer_write(m_buffer, buffer_string, ds_map_find_value(FindSession(i), "Channel_Name"));
network_send_packet(socket, m_buffer, buffer_tell(m_buffer));
}
 }