<?php
dm_postform(URL::route($_base_route.'.update', ['id' => $data['single']->id]), 'PUT');

dm_input('text','title', "Subject Name(<em style='color:red'>*</em>)", $data['single']->title);
dm_input('text','credit_hour', "Subject Credit Hour", $data['single']->credit_hour);
dm_input('text','theory_full_marks', "Subject Theory Full Marks", $data['single']->theory_full_marks);
dm_input('text','practical_full_marks', "Subject Practical Full Marks", $data['single']->practical_full_marks);
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
