<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\MyClass;
use App\Model\Dsms\Section;
use App\Model\Dsms\Subject;
use App\Model\Dsms\ClassSectionSubject;
use App\Model\Dsms\Eloquent\DM_General;

class AssignSubjectsController extends DM_BaseController
{
    protected $panel = 'Assign Subject';
    protected $base_route ='dsms.assign_subject';
    protected $view_path = 'dsms.assign_subject';

    public function __construct(Request $request, MyClass $model, Section $model_1, Subject $model_2, ClassSectionSubject $model_3, DM_General $model_g){
        $this->model = $model;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
        $this->model_3 = $model_3;
        $this->model_g = $model_g;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['class'] = $this->model::where('status', '=', 1)->get();
        $data['subject'] = $this->model_2::where('status', '=', 1)->get();
        return view($this->loadView($this->view_path.'.index'), compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['class'] = $this->model::where('status', '=', 1)->get();
        $data['subject'] = $this->model_2::where('status', '=', 1)->get();
        return view($this->loadView($this->view_path.'.create'), compact('data'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $subject_id = array_filter($request->subject_id);
        // $class_section_id = array_filter($request->class_section_id);
        $row_id = array_filter($request->row_id);
        $array_map = array_map(null, $row_id, $subject_id);
        // dd($array_map);
        foreach($array_map as $row) {
            var_dump($row[1]);
            if($row[0] != ""){
                $row = $this->model_3::findOrFail($row[0]);
            }
            else {
                $row = $this->model_3;
            }
            $row->class_section_id = $request->class_section_id;
            $row->subject_id = $row[1];
            $row->save();
        }
        die;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function getClassSection(Request $request) {
        if($request->ajax()){
            $class_id = $request->class_id;
            $sections = $this->model_g::getClassSections($class_id);
           return $sections;
        }

    }

    public function getClassSectionSubjects(Request $request) {
        if($request->ajax()){
            $class_id = $request->class_id;
            $section_id = $request->section_id;
            $subjects = $this->model_g::getClassSectionSubjects($class_id, $section_id);
            return $subjects;
        }
    }
}
