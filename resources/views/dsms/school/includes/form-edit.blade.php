<?php
dm_postform(URL::route($_base_route.'.update', ['id' => $data['single']->id]), 'PUT');
// dm_inputUpdate('text','code', "School Unique Code(<em style='color:red'>*</em>)", $data['single']->code);
dm_inputUpdate('text','title', "Name(<em style='color:red'>*</em>)", $data['single']->title);
dm_inputUpdate('text','title_nepali', "Name( Nepali )", $data['single']->title_nepali);
// dm_inputUpdate('text','established', "Established Date", $data['single']->established);
// dm_textareaUpdate('description', "Description", $data['single']->description);
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
