<?php
dm_postform(URL::route($_base_route.'.store'), 'POST');
dm_input('text','title', "Subject Name(<em style='color:red'>*</em>)", 'title');
dm_input('text','credit_hour', "Subject Credit Hour", 'credit_hour');
dm_input('text','theory_full_marks', "Subject Theory Full Marks", 'theory_full_marks');
dm_input('text','practical_full_marks', "Subject Practical Full Marks", 'practical_full_marks');
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
