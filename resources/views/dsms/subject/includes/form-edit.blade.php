<?php
dm_postform(URL::route($_base_route.'.update', ['id' => $data['single']->id]), 'PUT');
dm_inputUpdate('text','title', "Subject Name", $data['single']->title);
dm_inputUpdate('text','code', "Subject Code", $data['single']->code);
if($data['single']->type == "theory"){
    $theory = $data['single']->type;
    $practicle = "";
}
else {
    $theory = "";
    $practicle = $data['single']->type;
}
dm_radio('type', 'Theory', 'Theory', $theory);
dm_radio('type', 'Practical', 'Practical', $practicle);
dm_hsubmit('Submit', URL::route($_base_route.'.index'), 'Cancel');
dm_closeform();
?>
