<?php
dm_postform(URL::route($_base_route.'.update', ['id' => $data['single']->id]), 'PUT');
dm_inputUpdate('text','title', "Section Name", $data['single']->title);
// dm_inputUpdate('text','room_number', "Room Number ( If Any)", $data['single']->room_number);
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
