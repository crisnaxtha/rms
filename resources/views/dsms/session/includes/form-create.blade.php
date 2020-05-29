<?php
dm_postform(URL::route($_base_route.'.store'), 'POST');
dm_input('text','session', "Session (<em style='color:red'>*</em>)", 'session');
dm_input('text','session_nepali', "Session ( Nepali )", 'session_nepali');
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
