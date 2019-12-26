<?php

namespace App\Model\Dsms\Eloquent;

use Illuminate\Database\Eloquent\Model;
use DB;

class DM_General extends Model
{
    public static function getSections($class_id) {
        $data = DB::table('class_sections')
        ->join('sections', 'class_sections.section_id', '=', 'sections.id')
        ->where('class_sections.class_id', '=', $class_id)
        ->select('class_sections.*', 'sections.title as sec_title', 'sections.id as sec_id')
        ->get();
        return $data;
    }

    public static function getSubjects($class_id, $section_id) {
        $data = DB::table('class_section_subjects')
        ->join('subjects', 'class_section_subjects.subject_id', '=', 'subjects.id')
        ->where('class_section_subjects.class_id', '=', $class_id)
        ->where('class_section_subjects.section_id', '=', $section_id)
        ->where('class_section_subjects.status', '=', 1)
        ->select('class_section_subjects.*', 'subjects.title as sub_title', 'subjects.id as sub_id', 'subjects.code as sub_code', )
        ->get();
        return $data;
    }
}
