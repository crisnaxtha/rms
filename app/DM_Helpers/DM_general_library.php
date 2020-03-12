<?php
use App\Model\Dsms\Eloquent\DM_General;

if(!function_exists('dm_schoolClassSection')){
    function dm_schoolClassSection($school_class_section_id) {
        $data = DM_General::joinSchoolClassSection($school_class_section_id);
        return $data;
    }
}
// For Marksheet Module in to return student
if(!function_exists('dm_getStudent')){
    function dm_getStudent($student_id) {
        $data = DM_General::getStudent($student_id);
        return $data;
    }
}

// For Marksheet Module in to return school
if(!function_exists('dm_getSchool')){
    function dm_getSchool($school_id) {
        $data = DM_General::getSchool($school_id);
        return $data;
    }
}

// For Marksheet Module in to return class
if(!function_exists('dm_getClass')){
    function dm_getClass($class_id) {
        $data = DM_General::getClass($class_id);
        return $data;
    }
}

// For Marksheet Module in to return subject
if(!function_exists('dm_getSubject')){
    function dm_getSubject($school_class_section_subject_id) {
        $data = DM_General::getSubjectFromSchoolClassSectionSubjects($school_class_section_subject_id);
        return $data;
    }
}

