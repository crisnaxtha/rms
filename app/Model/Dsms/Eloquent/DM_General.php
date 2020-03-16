<?php

namespace App\Model\Dsms\Eloquent;

use Illuminate\Database\Eloquent\Model;
use App\Model\Dsms\Grade;
use DB;

class DM_General extends Model
{
    public static function joinSchoolClass($class_id) {
        $data = DB::table('school_classes')
                    ->join('my_classes', 'school_classes.class_id', '=', 'my_classes.id')
                    ->where('school_classes.school_id', '=', $class_id)
                    ->select('school_classes.*', 'my_classes.id as class_id', 'my_classes.title as class_title')
                    ->get();
        return $data;
    }

    public static function getSchoolClassId($school_id, $class_id) {
        $data =  DB::table('school_classes')
                    ->where('school_classes.class_id', '=', $class_id)
                    ->where('school_classes.school_id', '=', $school_id)
                    ->first();
        return $data;
    }

    //return single school based on school class section id
    public static function getSchoolClassAndSection($school_class_section_id) {
        $data = DB::table('school_class_sections')
                ->join('sections', 'school_class_sections.section_id', '=', 'sections.id')
                ->join('school_classes', 'school_class_sections.school_class_id', '=', 'school_classes.id')
                ->where('school_class_sections.id', '=', $school_class_section_id)
                ->select('school_classes.school_id', 'school_classes.class_id', 'sections.id as section_id')
                ->first();
        return $data;
    }

    //Return multiple section
    public static function getSchoolClassSections($school_class_id) {
        $data = DB::table('school_class_sections')
                ->join('sections', 'school_class_sections.section_id', '=', 'sections.id')
                ->where('school_class_sections.school_class_id', '=', $school_class_id)
                ->select('school_class_sections.*', 'sections.title as sec_title', 'sections.id as sec_id')
                ->get();
        return $data;
    }

    //Return single section based on school_class_id and section_id
    public static function getSchoolClassSection($school_class_id, $section_id) {
        $data = DB::table('school_class_sections')
                ->join('sections', 'school_class_sections.section_id', '=', 'sections.id')
                ->where('school_class_sections.school_class_id', '=', $school_class_id)
                ->where('school_class_sections.section_id', '=', $section_id)
                ->select('school_class_sections.*', 'sections.title as sec_title', 'sections.id as sec_id')
                ->first();
        return $data;
    }
// return subjects based on school Class section ID
    public static function getSchoolClassSectionSubjects($school_class_section_id) {
        $data = DB::table('school_class_section_subjects')
                ->join('subjects', 'school_class_section_subjects.subject_id', '=', 'subjects.id')
                ->where('school_class_section_subjects.school_class_section_id', '=', $school_class_section_id)
                ->where('school_class_section_subjects.status', '=', 1)
                ->select('school_class_section_subjects.*', 'subjects.title as sub_title', 'subjects.id as sub_id', 'subjects.theory_full_marks', 'subjects.practical_full_marks')
                ->get();
        return $data;
    }
// Join the school Class Sections Table with section , class and schools
    public static function joinSchoolClassSection($school_class_section_id) {
        $data = DB::table('school_class_sections')
                ->join('sections', 'school_class_sections.section_id', '=', 'sections.id')
                ->join('school_classes', 'school_class_sections.school_class_id', '=', 'school_classes.id')
                ->join('my_classes', 'school_classes.class_id', '=', 'my_classes.id')
                ->join('schools', 'school_classes.school_id', '=', 'schools.id')
                ->where('school_class_sections.id', '=', $school_class_section_id)
                ->select('school_class_sections.*','schools.id as school_id', 'my_classes.id as class_id', 'my_classes.title as class_title', 'sections.title as sec_title', 'sections.id as sec_id')
                ->first();
        return $data;
    }
    //get all the School with all class and all section by Join Query
    public static function joinAllSchoolClassSection() {
        $data = DB::table('school_class_sections')
                ->join('sections', 'school_class_sections.section_id', '=', 'sections.id')
                ->join('school_classes', 'school_class_sections.school_class_id', '=', 'school_classes.id')
                ->join('my_classes', 'school_classes.class_id', '=', 'my_classes.id')
                ->join('schools', 'school_classes.school_id', '=', 'schools.id')
                ->select('school_class_sections.*','schools.id as school_id', 'schools.title as school_title', 'my_classes.id as class_id', 'my_classes.title as class_title', 'sections.title as sec_title', 'sections.id as sec_id')
                ->get();
        return $data;
    }
    //get subject from school class section subject
    public static function getSchoolClassSectionSubject($school_class_section_id, $subject_id) {
        $data = DB::table('school_class_section_subjects')
                    ->where('school_class_section_id', '=', $school_class_section_id)
                    ->where('subject_id', '=', $subject_id)
                    ->where('status', '=', 1)
                    ->first();
        return $data;
    }
    //get Single Subject from School Class Section Subjects
    public static function getSubjectFromSchoolClassSectionSubjects($school_class_section_subject_id){
        $data = DB::table('subjects')
                ->join('school_class_section_subjects', 'subjects.id', '=', 'school_class_section_subjects.subject_id')
                ->where('school_class_section_subjects.id', '=', $school_class_section_subject_id)
                ->select('subjects.*')
                ->first();
        return $data;
    }

    public static function getSchoolClassSectionStudents($school_class_sec_id) {
        $data = DB::table('students')
                    ->where('students.school_class_section_id', '=', $school_class_sec_id)
                    ->select('students.id', 'students.first_name', 'students.roll_no', 'students.dob_bs')
                    ->get();
        return $data;
    }

    public static function joinSchoolClassSectionSubjectStudent($session_id, $school_class_section_id){
        $data = DB::table('students')
                    ->join('school_class_section_subjects', 'students.school_class_section_id', '=', 'school_class_section_subjects.school_class_section_id')
                    ->where('school_class_section_subjects.school_class_section_id', '=', $school_class_section_id)
                    ->where('students.session_id', '=', $session_id)
                    ->select('school_class_section_subjects.id as school_class_section_subject_id', 'students.id', 'students.first_name')
                    ->get();
        return $data;
    }

//show single result of student
    public static function showStudentResult($exam_schedule_id, $student_id) {
        $data = DB::table('exam_results')
                ->join('students', 'exam_results.student_id', 'students.id')
                ->where('exam_schedules_id', $exam_schedule_id)
                ->where('student_id', $student_id)
                ->select('exam_results.*', 'students.first_name', 'students.last_name')
                ->first();
        return $data;
    }
//get single result of student based on exam schedule id and student id
    public static function getStudentResult($session_id, $exam_id, $student_id, $school_class_section_subject_id) {
        $data = DB::table('students')
                ->leftJoin('exam_results', 'students.id', '=', 'exam_results.student_id')
                ->where('students.id', '=', $student_id)
                ->where('exam_results.session_id','=', $session_id)
                ->where('exam_results.exam_id','=', $exam_id)
                ->where('exam_results.school_class_section_subject_id','=', $school_class_section_subject_id)
                ->select('students.id as student_id', 'students.first_name','students.last_name', 'exam_results.*')
                ->first();
        return $data;
    }

    //get single report of student based on exam schedule id and student id
    // public static function getStudentReport($session_id, $exam_id, $student_id, $school_class_section_id) {
    //     $data = DB::table('reports')
    //                 ->where('student_id', '=', $student_id)
    //                 ->where('session_id','=', $session_id)
    //                 ->where('exam_id','=', $exam_id)
    //                 ->where('school_class_section_id','=', $school_class_section_id)
    //                 ->first();
    //     return $data;
    // }

    // public static function getStudentResultReport($session_id, $exam_id, $student_id, $school_class_section_id){
    //     $data = DB::table('students')
    //                 ->join('exam_results', 'students.id', '=', 'exam_results.student_id')
    //                 ->join('reports', 'students.id', '=', 'reports.student_id')
    //                 ->where('students.id', '=', $student_id)
    //                 ->where('students.school_class_section_id', '=', $school_class_section_id)
    //                 ->where('exam_results.session_id','=', $session_id)
    //                 ->where('exam_results.exam_id','=', $exam_id)
    //                 ->select('students.id as student_id', 'students.first_name','students.last_name', 'exam_results.*', 'reports.*')
    //                 ->first();
    //         return $data;
    // }
//group array base on key and sorted
    public static function arrayGroupBy($old_arr_1, $based_on) {
        $arr = array();
        $old_arr = json_decode($old_arr_1, true);
        foreach($old_arr as $key => $item)
        {
            if(array_key_exists($based_on, $item))
                $arr[$item[$based_on]][$key] = $item;
        }
        ksort($arr, SORT_NUMERIC);
        return $arr;
    }


//group array base on key and not sorted
public static function arrayGroupByNotSorted($old_arr_1, $based_on) {
    $arr = array();
    $old_arr = json_decode($old_arr_1, true);
    foreach($old_arr as $key => $item)
    {
        if(array_key_exists($based_on, $item))
            $arr[$item[$based_on]][$key] = $item;
    }
    return $arr;
}
//get subject based on exam schedule
    public static function getSubjectFromSchoolClassSec($school_class_section_subject_id){
        $data = DB::table('school_class_section_subjects')
                ->leftJoin('subjects', 'school_class_section_subjects.subject_id', 'subjects.id')
                ->where('school_class_section_subjects.id', '=', $school_class_section_subject_id)
                ->select('subjects.*')
                ->first();
                // dd($data);
        return $data;
    }
//check if theory is exist on subject
    public static function checkTheoryMarks($school_class_section_subject_id, $theory_marks){
        $subject = self::getSubjectFromSchoolClassSec($school_class_section_subject_id);
        if(isset($subject->theory_full_marks)){
            return $theory_marks;
        } else {
            return Null;
        }
    }
    //check if Theory PASS OR FAIL
    public static function checkTheoryOutcome($school_class_section_subject_id, $theory_marks) {
        $subject = self::getSubjectFromSchoolClassSec($school_class_section_subject_id);
        if($subject->theory_pass_marks > $theory_marks){
            return true;
        } else {
            return false;
        }
    }
//check if practical is exist on subject
    public static function checkPracticalMarks($school_class_section_subject_id, $practical_marks) {
        $subject = self::getSubjectFromSchoolClassSec($school_class_section_subject_id);
        if(isset($subject->practical_full_marks)){
            return $practical_marks;
        } else {
            return NULL;
        }
    }
  //check if Theory PASS OR FAIL
  public static function checkPracticalOutcome($school_class_section_subject_id, $practical_marks) {
    $subject = self::getSubjectFromSchoolClassSec($school_class_section_subject_id);
    if($subject->practical_pass_marks > $practical_marks){
        return true;
    } else {
        return false;
    }
}
//get theory grade
    public function getTheoryGrade($school_class_section_subject_id, $theory_marks) {
        $subject = self::getSubjectFromSchoolClassSec($school_class_section_subject_id);
        if(isset($subject->theory_full_marks)){
        $marks_percentage = ($theory_marks * 100)/$subject->theory_full_marks;
        $grade_point = $this->calculateGradePoint($marks_percentage);
        return $grade_point;
        } else {
            return false;
        }
    }
//get practical grade
    public function getPracticalGrade($school_class_section_subject_id, $practical_marks) {
        $subject = self::getSubjectFromSchoolClassSec($school_class_section_subject_id);
        if(isset($subject->practical_full_marks)){
        $marks_percentage = ($practical_marks * 100)/$subject->practical_full_marks;
        $grade_point = $this->calculateGradePoint($marks_percentage);
        return $grade_point;
        }else {
            return false;
        }
    }
//get Final Grade
    public function getFinalGrade($school_class_section_subject_id, $total_marks) {
        $subject = self::getSubjectFromSchoolClassSec($school_class_section_subject_id);
        $marks_percentage = ($total_marks * 100)/($subject->theory_full_marks +  $subject->practical_full_marks);
        $grade_point = $this->calculateGradePoint($marks_percentage);
        return $grade_point;
    }
//calculate grade * credit hour
    public function getGradeCreditHour($school_class_section_subject_id, $grade_point) {
        $subject = self::getSubjectFromSchoolClassSec($school_class_section_subject_id);
        $grade_credit_hour = $grade_point * $subject->credit_hour;
        return $grade_credit_hour;
    }
//Calculate Grade Point
    public function calculateGradePoint($marks_percentage) {
        $data['rows'] = Grade::all();
        $grade_point = [];
        foreach($data['rows'] as $row){
           if($marks_percentage >= $row->mark_from && $marks_percentage <= $row->mark_upto){
                array_push($grade_point, $row->title, $row->point);
                break;
            }
        }
        return $grade_point;
    }

    //return Session base on id
    public static function getSession($session_id){
        $data = DB::table('sessions')
                ->where('id', '=', $session_id)
                ->first();
        return $data;
    }

    //return Session base on id
    public static function getExam($exam_id){
    $data = DB::table('exams')
            ->where('id', '=', $exam_id)
            ->first();
    return $data;
    }
    //return student base on id
    public static function getSchool($school_id){
        $data = DB::table('schools')
                ->where('id', '=', $school_id)
                ->first();
        return $data;
    }

    //return student base on id
    public static function getClass($class_id){
        $data = DB::table('my_classes')
                ->where('id', '=', $class_id)
                ->first();
        return $data;
    }
    //return student base on id
    public static function getSection($section_id){
    $data = DB::table('sections')
            ->where('id', '=', $section_id)
            ->first();
    return $data;
    }
    //return student base on id
    public static function getStudent($student_id){
        $data = DB::table('students')
                ->where('id', '=', $student_id)
                ->first();
        return $data;
    }


}
