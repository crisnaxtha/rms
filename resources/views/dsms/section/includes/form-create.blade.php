<?php
dm_postform(URL::route($_base_route.'.store'), 'POST');
dm_input('text','title', "Section Name", 'title');
// dm_input('text','room_number', "Room Number ( If Any)", 'room_number');
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
