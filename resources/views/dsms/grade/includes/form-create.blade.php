<?php
dm_postform(URL::route($_base_route.'.store'), 'POST');
dm_input('text','title', "Grade Name(<em style='color:red'>*</em>)", 'title');
dm_input('text','mark_from', "Percent From(<em style='color:red'>*</em>)", 'mark_from');
dm_input('text','mark_upto', "Percent Upto(<em style='color:red'>*</em>)", 'mark_upto');
dm_input('text','point', "Grade Point(<em style='color:red'>*</em>)", 'point');
dm_textarea('description', "Description  ( If Any)", 'description');
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
