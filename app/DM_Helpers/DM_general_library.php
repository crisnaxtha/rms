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

// For Marksheet Module in to return subject
if(!function_exists('dm_getSubject')){
    function dm_getSubject($exam_schedule_id) {
        $data = DM_General::getSubjectFromExamSchedule($exam_schedule_id);
        return $data;
    }
}

