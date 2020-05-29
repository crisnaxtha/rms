<?php
dm_postform(URL::route($_base_route.'.update', ['id' => $data['single']->id]), 'PUT');
dm_inputUpdate('text','session', "Session (<em style='color:red'>*</em>)", $data['single']->session);
dm_inputUpdate('text','session_nepali', "Session ( Nepali )", $data['single']->session_nepali);
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
