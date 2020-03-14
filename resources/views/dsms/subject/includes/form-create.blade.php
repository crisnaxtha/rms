<?php
dm_postform(URL::route($_base_route.'.store'), 'POST');
dm_input('text','title', "Subject Name(<em style='color:red'>*</em>)", 'title');
dm_input('number','credit_hour', "Subject Credit Hour (<em style='color:red'>*</em>)", 'credit_hour');
dm_input('number','theory_full_marks', "Subject Theory Full Marks(<em style='color:red'>*</em>)", 'theory_full_marks');
dm_input('number','theory_pass_marks', "Subject Theory Pass Marks(<em style='color:red'>*</em>)", 'theory_pass_marks');
dm_input('number','practical_full_marks', "Subject Practical Full Marks", 'practical_full_marks');
dm_input('number','practical_pass_marks', "Subject Practical Pass Marks", 'practical_pass_marks');
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
