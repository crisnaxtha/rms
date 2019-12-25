<?php

namespace App\Model\Dsms\Eloquent;

use Illuminate\Database\Eloquent\Model;
use DB;

class DM_General extends Model
{
    public static function getSections($id) {
        $data = DB::table('class_sections')
        ->join('sections', 'class_sections.section_id', '=', 'sections.id')
        ->where('class_sections.class_id', '=', $id)
        ->select('class_sections.*', 'sections.title as sec_title', 'sections.id as sec_id')
        ->get();
        return $data;
    }
}
