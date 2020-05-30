<?php

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
// if(!function_exists('dm_schoolClassSection')){
//     function dm_schoolClassSection($school_class_section_id) {
//         $data = DM_General::joinSchoolClassSection($school_class_section_id);
//         return $data;
//     }
// }
if(!function_exists('convertNos')){
    function convertNos($nos){
        $n = '';
        switch($nos){
            case "०": $n = 0; break;
            case "१": $n = 1; break;
            case "२": $n= 2; break;
            case "३": $n = 3; break;
            case "४": $n = 4; break;
            case "५": $n = 5; break;
            case "६": $n = 6; break;
            case "७": $n = 7; break;
            case "८": $n = 8; break;
            case "९": $n = 9; break;
            case "0": $n = "०"; break;
            case "1": $n = "१"; break;
            case "2": $n = "२"; break;
            case "3": $n = "३"; break;
            case "4": $n = "४"; break;
            case "5": $n = "५"; break;
            case "6": $n = "६"; break;
            case "7": $n = "७"; break;
            case "8": $n = "८"; break;
            case "9": $n = "९"; break;
            case "-": $n = "-"; break;
            case ".": $n = "."; break;
        }
        return $n;
    }
}
if(!function_exists('get_nepali_data')){
    function get_nepali_data($nepali_date) {
        // An array of Nepali number representations
        $num = 0; // get your number
        // replace this with whatever you're using to get your number
        if (isset($nepali_date)) $num = strip_tags($nepali_date);
        /* Convert your number (could be a string of unicode,
        * not necessarily a digit) into a string and split it
        * to get an array of characters.
        */
        $str_num = preg_split('//u', ("". $num), -1); // not explode('', ("". $num))

        // For each item in your exploded string, retrieve the Nepali equivalent or vice versa.
        $out = '';
        $out_arr = array_map('convertNos', $str_num);
        $out = implode('', $out_arr);
        return $out;
    }
}
