<?php
dm_postform(URL::route($_base_route.'.update', ['id' => $data['single']->id]), 'PUT');

dm_inputUpdate('text','title', "Subject Name(<em style='color:red'>*</em>)", $data['single']->title);
dm_inputUpdate('number','credit_hour', "Subject Credit Hour(<em style='color:red'>*</em>)", $data['single']->credit_hour);
dm_inputUpdate('number','theory_full_marks', "Subject Theory Full Marks(<em style='color:red'>*</em>)", $data['single']->theory_full_marks);
dm_inputUpdate('number','theory_pass_marks', "Subject Theory Pass Marks(<em style='color:red'>*</em>)", $data['single']->theory_pass_marks);
dm_inputUpdate('number','practical_full_marks', "Subject Practical Full Marks", $data['single']->practical_full_marks);
dm_inputUpdate('number','practical_pass_marks', "Subject Practical Pass Marks", $data['single']->practical_pass_marks);
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
