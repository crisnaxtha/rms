<?php
dm_postform(URL::route($_base_route.'.update', ['id' => $data['single']->id]), 'PUT');
dm_inputUpdate('text','title', "Name(<em style='color:red'>*</em>)", $data['single']->title);
dm_textareaUpdate('description', "Note", $data['single']->description);
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
