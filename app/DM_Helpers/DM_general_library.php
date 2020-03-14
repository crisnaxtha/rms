<?php
use App\Model\Dsms\Eloquent\DM_General;

if(!function_exists('dm_schoolClassSection')){
    function dm_schoolClassSection($school_class_section_id) {
        $data = DM_General::joinSchoolClassSection($school_class_section_id);
        return $data;
    }
}
// For Marksheet Module in to return student
if(!function_exists('dm_getSession')){
    function dm_getSession($session_id) {
        $data = DM_General::getSession($session_id);
        return $data;
    }
}

// For Marksheet Module in to return student
if(!function_exists('dm_getExam')){
    function dm_getExam($exam_id) {
        $data = DM_General::getExam($exam_id);
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

// For Marksheet Module in to return class
if(!function_exists('dm_getSection')){
    function dm_getSection($section_id) {
        $data = DM_General::getSection($section_id);
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
//return percentage
if(!function_exists('dm_calPercentage')){
    function dm_calPercentage($part , $whole) {
        if(isset($part) && isset($whole)){
            $data = ($part/$whole)*100;
            return $data;
        }
    }
}
//return percentage
if(!function_exists('dm_calGPA')){
    function dm_calGPA($total_grade_credit_hour , $subjects_no) {
        if(isset($total_grade_credit_hour) && isset($subjects_no)){
            $data = $total_grade_credit_hour/($subjects_no*4);
            return $data;
        }
    }
}


