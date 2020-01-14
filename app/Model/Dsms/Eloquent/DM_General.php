<?php

namespace App\Model\Dsms\Eloquent;

use Illuminate\Database\Eloquent\Model;
use DB;

class DM_General extends Model
{
    public static function getClassSections($class_id) {
        $data = DB::table('class_sections')
        ->join('sections', 'class_sections.section_id', '=', 'sections.id')
        ->where('class_sections.class_id', '=', $class_id)
        ->select('class_sections.*', 'sections.title as sec_title', 'sections.id as sec_id')
        ->get();
        return $data;
    }

    public static function getClassSectionSubjects($class_section_id) {
        $data = DB::table('class_section_subjects')
                ->join('subjects', 'class_section_subjects.subject_id', '=', 'subjects.id')
                ->where('class_section_subjects.class_section_id', '=', $class_section_id)
                ->where('class_section_subjects.status', '=', 1)
                ->select('class_section_subjects.*', 'subjects.title as sub_title', 'subjects.id as sub_id', 'subjects.code as sub_code', )
                ->get();
        return $data;
    }

    public static function getClassSectionSubject($class_section_id, $subject_id) {
        $data = DB::table('class_section_subjects')
                    ->where('class_section_id', '=', $class_section_id)
                    ->where('subject_id', '=', $subject_id)
                    ->where('status', '=', 1)
                    ->first();
        return $data;
    }

    public static function getClassSectionId($class_id, $section_id) {
        $data =  DB::table('class_sections')
                    ->where('class_sections.class_id', '=', $class_id)
                    ->where('class_sections.section_id', '=', $section_id)
                    ->first();
        return $data;
    }

    public static function getClassSection($class_section_id) {
        $data = DB::table('class_sections')
                ->join('my_classes', 'class_sections.class_id', '=', 'my_classes.id')
                ->join('sections', 'class_sections.section_id', '=', 'sections.id')
                ->where('class_sections.id', $class_section_id)
                ->select('my_classes.title as class_title', 'sections.title as sec_title')
                ->get();
        return $data;
    }

    public static function getExamSchedule($class_section_id) {
        $data = DB::table('class_section_subjects')
                ->join('subjects', 'class_section_subjects.subject_id', '=', 'subjects.id')
                ->join('exam_schedules', 'class_section_subjects.id', '=', 'exam_schedules.class_section_subject_id' )
                ->join('exams', 'exam_schedules.exam_id', '=', 'exams.id')
                ->where('class_section_subjects.class_section_id', '=', $class_section_id)
                ->where('class_section_subjects.status', '=', 1)
                ->select('class_section_subjects.*', 'subjects.title as sub_title', 'subjects.id as sub_id', 'subjects.code as sub_code', 'exam_schedules.*' , 'exams.title as exm_title')
                ->get();
        return $data;
    }

    public static function getExamResult($class_section_id, $exam_id) {
        $data = DB::table('class_section_subjects')
                ->join('subjects', 'class_section_subjects.subject_id', '=', 'subjects.id')
                ->join('exam_schedules', 'class_section_subjects.id', '=', 'exam_schedules.class_section_subject_id' )
                ->join('exams', 'exam_schedules.exam_id', '=', 'exams.id')
                ->where('class_section_subjects.class_section_id', '=', $class_section_id)
                ->where('exam_schedules.exam_id', '=', $exam_id)
                ->where('class_section_subjects.status', '=', 1)
                ->select('class_section_subjects.*', 'subjects.title as sub_title', 'subjects.id as sub_id', 'subjects.code as sub_code', 'exam_schedules.id as exam_schedule_id' , 'exams.title as exm_title')
                ->get();
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
}
