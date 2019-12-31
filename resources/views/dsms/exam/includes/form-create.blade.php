<?php
dm_postform(URL::route($_base_route.'.store'), 'POST');
dm_input('text','title', "Name(<em style='color:red'>*</em>)", 'title');
dm_textarea('description', "Note", 'description');
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
