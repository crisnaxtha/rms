<?php

use App\Model\Dsms\Eloquent\DM_General;
/**
 * showing the status
 */
if(!function_exists('dm_flag')){
    function dm_flag($value) {
        if($value){?>
    <button class="btn btn-round btn-success btn-xs">
        <i class="fa fa-check"></i>
    </button>
       <?php }
    else{ ?>
        <button class="btn btn-round btn-danger btn-xs">
            <i class="fa fa-minus-circle"></i>
        </button>
       <?php
        }
    }
}
/** Showing User Role */
if(!function_exists('dm_userRole')){
    function dm_userRole($value) {
        if($value == "super-admin") {
            echo $role = "<i style='color:white;padding:5px;background:#78CD51'>Super Admin</i>";
        }elseif($value == "admin" ) {
           echo $role = "<i style='color:white;padding:5px;background:#e4ba00'>Admin</i>";
        }elseif($value == "editor") {
           echo $role = "<i style='color:white;padding:5px;background:#53bee6'>Editor</i>";
        }elseif($value == "affiliated") {
            echo $role = "<i style='color:white;padding:5px;background:#53bee6'>Affiliated User</i>";
        }else {
           echo $role = "<i style='color:white;padding:5px;background:#ec6459'>No Role Assign</i>";
        }
    }
}
if(!function_exists('dm_classSection')){
    function dm_classSection($class_section_id) {
        $data = DM_General::getClassSection($class_section_id);
        return $data;
    }
}
