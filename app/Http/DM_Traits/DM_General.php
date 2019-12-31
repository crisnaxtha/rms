<?php

namespace App\Http\Dm_Traits;

use Illuminate\Http\Request;

trait DM_General {
    public function getClassSection(Request $request) {
        if($request->ajax()){
            $class_id = $request->class_id;
            $sections = $this->model_g::getClassSections($class_id);
           return $sections;
        }

    }
}
