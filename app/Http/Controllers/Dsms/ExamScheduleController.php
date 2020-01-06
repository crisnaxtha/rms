<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\ExamSchedule;
use App\Model\Dsms\Eloquent\DM_General;
use App\Model\Dsms\MyClass;

class ExamScheduleController extends DM_BaseController
{
    protected $panel = 'Exam Schedule';
    protected $base_route ='dsms.exam_schedule';
    protected $view_path = 'dsms.exam_schedule';

    public function __construct(Request $request, ExamSchedule $model, MyClass $model_1, DM_General $model_g){
        $this->model = $model;
        $this->model_1 = $model_1;
        $this->model_g = $model_g;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['class'] = $this->model_1::where('status', '=', 1)->get();
        return view($this->loadView($this->view_path.'.index'), compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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

    public function getExamSchedule(Request $request) {
        if($request->ajax()){
            $class_id = $request->class_id;
            $section_id = $request->section_id;
            $class_section = $this->model_g::getClassSectionId($class_id, $section_id);
            $exam_schedules = $this->model_g::getExamSchedule($class_section->id);
            $unique_exams_schedules[] = $this->model_g::arrayGroupBy($exam_schedules, 'exm_title');
            // var_dump($unique_exams_schedules);
            return $unique_exams_schedules;
        }
    }
}
