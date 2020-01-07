<?php
dm_postform(URL::route($_base_route.'.update', ['id' => $data['single']->id]), 'PUT');
dm_inputUpdate('text','title', "Grade Name(<em style='color:red'>*</em>)", $data['single']->title);
dm_inputUpdate('text','mark_from', "Percent From(<em style='color:red'>*</em>)", $data['single']->mark_from);
dm_inputUpdate('text','mark_upto', "Percent Upto(<em style='color:red'>*</em>)", $data['single']->mark_upto);
dm_inputUpdate('text','point', "Grade Point(<em style='color:red'>*</em>)", $data['single']->point);
dm_textareaUpdate('description', "Description  ( If Any)", $data['single']->description);
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
