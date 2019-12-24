<?php
dm_postform(URL::route($_base_route.'.store'), 'POST');
dm_input('text','title', "Subject Name(<em style='color:red'>*</em>)", 'title');
dm_input('text','code', "Subject Code", 'room_number');
dm_radio('type', 'Theory', 'Theory');
dm_radio('type', 'Practical', 'Practical');
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
