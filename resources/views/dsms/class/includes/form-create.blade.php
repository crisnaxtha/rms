<?php
dm_postform(URL::route($_base_route.'.store'), 'POST');
dm_input('text','title', "Class Number/ Name(<em style='color:red'>*</em>)", 'title');
dm_input('text','title_nepali', "Class Number/ Name( Nepali )", 'title_nepali');
// dm_input('text','group', "Class Group ( If Any)", 'group');
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
