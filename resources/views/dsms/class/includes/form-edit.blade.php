<?php
dm_postform(URL::route($_base_route.'.update', ['id' => $data['single']->id]), 'PUT');
dm_inputUpdate('text','title', "Class Number/ Name", $data['single']->title);
// dm_inputUpdate('text','group', "Class Group ( If Any)", $data['single']->group);
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
