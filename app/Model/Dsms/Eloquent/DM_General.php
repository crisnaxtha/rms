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

    public static function getSchoolClassSectionSubjects($school_class_section_id) {
        $data = DB::table('school_class_section_subjects')
                ->join('subjects', 'school_class_section_subjects.subject_id', '=', 'subjects.id')
                ->where('school_class_section_subjects.school_class_section_id', '=', $school_class_section_id)
                ->where('school_class_section_subjects.status', '=', 1)
                ->select('school_class_section_subjects.*', 'subjects.title as sub_title', 'subjects.id as sub_id')
                ->get();
        return $data;
    }

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

    public static function getSchoolClassSectionSubject($school_class_section_id, $subject_id) {
        $data = DB::table('school_class_section_subjects')
                    ->where('school_class_section_id', '=', $school_class_section_id)
                    ->where('subject_id', '=', $subject_id)
                    ->where('status', '=', 1)
                    ->first();
        return $data;
    }

    //return multiple exam schedule based on school_class_section_id
    public static function getExamSchedules($school_class_section_id) {
        $data = DB::table('school_class_section_subjects')
                ->join('subjects', 'school_class_section_subjects.subject_id', '=', 'subjects.id')
                ->join('exam_schedules', 'school_class_section_subjects.id', '=', 'exam_schedules.school_class_section_subject_id' )
                ->join('exams', 'exam_schedules.exam_id', '=', 'exams.id')
                ->where('school_class_section_subjects.school_class_section_id', '=', $school_class_section_id)
                ->where('school_class_section_subjects.status', '=', 1)
                ->select('school_class_section_subjects.*', 'subjects.title as sub_title', 'subjects.id as sub_id', 'subjects.theory_full_marks as theory_marks', 'subjects.practical_full_marks as practical_marks', 'subjects.credit_hour',  'exam_schedules.*' , 'exams.title as exm_title')
                ->get();
        return $data;
    }

    //return group of single exam schedule based on exam id and school_class_section_id
    public static function getExamSchedule($school_class_section_id, $exam_id) {
        $data = DB::table('school_class_section_subjects')
                ->join('subjects', 'school_class_section_subjects.subject_id', '=', 'subjects.id')
                ->join('exam_schedules', 'school_class_section_subjects.id', '=', 'exam_schedules.school_class_section_subject_id' )
                ->join('exams', 'exam_schedules.exam_id', '=', 'exams.id')
                ->where('school_class_section_subjects.school_class_section_id', '=', $school_class_section_id)
                ->where('exam_schedules.exam_id', '=', $exam_id)
                ->where('school_class_section_subjects.status', '=', 1)
                ->select('school_class_section_subjects.*', 'subjects.title as sub_title', 'subjects.id as sub_id', 'subjects.theory_full_marks as theory_marks', 'subjects.practical_full_marks as practical_marks', 'subjects.credit_hour', 'exam_schedules.id as exam_sch_id' , 'exams.title as exm_title')
                ->get();
        return $data;
    }

    public static function getExamResult($school_class_section_id, $exam_id) {
        $data = DB::table('exam_results')
                    ->join('exam_schedules', 'exam_results.exam_schedules_id', 'exam_schedules.id')
                    ->join('students', 'exam_results.student_id', 'students.id')
                    ->join('school_class_section_subjects', 'exam_schedules.school_class_section_subject_id', 'school_class_section_subjects.id')
                    ->join('school_class_sections', 'school_class_section_subjects.school_class_section_id', 'school_class_sections.id')
                    ->where('exam_schedules.exam_id', '=', $exam_id)
                    ->where('school_class_sections.id', '=', $school_class_section_id)
                    ->select('exam_results.*', 'exam_schedules.*', 'students.*')
                    ->get();

    }

    public static function showStudentResult($exam_schedule_id, $student_id) {
        $data = DB::table('exam_results')
                ->join('students', 'exam_results.student_id', 'students.id')
                ->where('exam_schedules_id', $exam_schedule_id)
                ->where('student_id', $student_id)
                ->select('exam_results.*', 'students.first_name', 'students.last_name')
                ->first();
        return $data;
    }

    public static function getStudentResult($exam_schedule_id, $student_id) {
        $data = DB::table('students')
                ->leftJoin('exam_results', 'students.id', '=', 'exam_results.student_id')
                ->where('students.id', '=', $student_id)
                ->where('exam_results.exam_schedules_id','=', $exam_schedule_id)
                ->select('students.id as std_id', 'students.first_name','students.last_name', 'exam_results.*')
                ->first();
        return $data;
    }

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

    public static function getSubjectFromExamSchedule($exam_schedule_id){
        $data = DB::table('exam_schedules')
                ->leftJoin('school_class_section_subjects', 'exam_schedules.school_class_section_subject_id', 'school_class_section_subjects.id')
                ->leftJoin('subjects', 'school_class_section_subjects.subject_id', 'subjects.id')
                ->where('exam_schedules.id', '=', $exam_schedule_id)
                ->select('subjects.*')
                ->first();
        return $data;
    }

    public static function checkTheoryMarks($exam_schedule_id, $theory_marks){
        $subject = self::getSubjectFromExamSchedule($exam_schedule_id);
        if(isset($subject->theory_full_marks)){
            return $theory_marks;
        } else {
            return Null;
        }
    }

    public static function checkPracticalMarks($exam_schedule_id, $practical_marks) {
        $subject = self::getSubjectFromExamSchedule($exam_schedule_id);
        if(isset($subject->practical_full_marks)){
            return $practical_marks;
        } else {
            return NULL;
        }
    }

    public function getTheoryGrade($exam_schedule_id, $theory_marks) {
        $subject = self::getSubjectFromExamSchedule($exam_schedule_id);
        if(isset($subject->theory_full_marks)){
        $marks_percentage = ($theory_marks * 100)/$subject->theory_full_marks;
        $grade_point = $this->calculateGradePoint($marks_percentage);
        return $grade_point;
        } else {
            return false;
        }
    }

    public function getPracticalGrade($exam_schedule_id, $practical_marks) {
        $subject = self::getSubjectFromExamSchedule($exam_schedule_id);
        if(isset($subject->practical_full_marks)){
        $marks_percentage = ($practical_marks * 100)/$subject->practical_full_marks;
        $grade_point = $this->calculateGradePoint($marks_percentage);
        return $grade_point;
        }else {
            return false;
        }
    }

    public function getFinalGrade($exam_schedule_id, $total_marks) {
        $subject = self::getSubjectFromExamSchedule($exam_schedule_id);
        $marks_percentage = ($total_marks * 100)/($subject->theory_full_marks +  $subject->practical_full_marks);
        $grade_point = $this->calculateGradePoint($marks_percentage);
        return $grade_point;
    }

    public function getGradeCreditHour($exam_schedule_id, $grade_point) {
        $subject = self::getSubjectFromExamSchedule($exam_schedule_id);
        $grade_credit_hour = $grade_point * $subject->credit_hour;
        return $grade_credit_hour;
    }

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
}
