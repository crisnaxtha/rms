<?php
dm_postform(URL::route($_base_route.'.store'), 'POST');
// dm_input('text','code', "School Unique Code(<em style='color:red'>*</em>)", 'code');
dm_input('text','title', "Name(<em style='color:red'>*</em>)", 'title');
dm_input('text','title_nepali', "Name( Nepali )", 'title_nepali');
// dm_input('text','established', "Established Date", 'established');
// dm_textarea('description', "Description", 'description');
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
