//check whether left button was pressed
if(mouse_check_button_pressed(mb_left)) {
var offset_y = y + 64; //calculate the offset again
    
    //check whether mouse position is inside the drawing area
    
    
    //if the mouse is in the area where any of tabs could be located 
    //this is for the performance check
                      
               for(var i=0; i < ds_list_size(tab_list); i ++) {
               
               
               if(point_in_rectangle(mouse_x, mouse_y, x + (i *  86),offset_y, x + ( (i+1) * sprite_get_width(spr_tab)), 
               offset_y + 86)) {   //now we check for each possible locations
               
               selected_tab = i;       //return the position at where the mouse was found
              
               var map = ds_list_find_value(tab_list, selected_tab)    //Find the map with stored information
               ds_map_replace(map, "selected", true);     //replace selected value to true, so we set the tab to be highlighted
               for(var i=0; i < ds_list_size(tab_list); i++) {   //this will loop trough other tabs and set them to deselected 
               if(i != selected_tab) {  //if selected tab isn't the tab that we have clicked on
               
               var map = ds_list_find_value(tab_list, i); 
               ds_map_replace(map, "selected", false);  //set it to false
               }
               }
               }
               
               
               
               
               }
    
    
      
    
}
