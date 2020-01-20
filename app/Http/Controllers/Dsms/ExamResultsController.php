<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\ExamResult;
use App\Model\Dsms\Eloquent\DM_General;
use App\Model\Dsms\MyClass;
use App\Model\Dsms\Exam;
use App\Model\Dsms\Student;
use App\Model\Dsms\School;
use App\Model\Dsms\Section;

class ExamResultsController extends DM_BaseController
{
    protected $panel = 'Marks Register';
    protected $base_route ='dsms.marks';
    protected $view_path = 'dsms.marks';

    public function __construct(Request $request, ExamResult $model, MyClass $model_1,Student $model_2, Exam $model_3, School $model_4, Section $model_5, DM_General $model_g){
        $this->model = $model;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
        $this->model_3 = $model_3;
        $this->model_4 = $model_4;
        $this->model_5 = $model_5;
        $this->model_g = $model_g;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->isMethod('post')){
            $data['school'] = $this->model_4::all();
            $data['class'] = $this->model_1::where('status', '=', 1)->get();
            $data['section'] = $this->model_5::where('status', '=', 1)->get();
            $data['exam'] = $this->model_3::where('status', '=', 1)->get();

            $data['school_id'] = $request->school_id;
            $data['class_id'] = $request->class_id;
            $data['section_id'] = $request->section_id;
            $data['exam_id'] = $request->exam_id;

            $data['school_class'] = $this->model_g::getSchoolClassId($data['school_id'], $data['class_id']);
            $data['school_class_section'] = $this->model_g::getSchoolClassSection($data['school_class']->id, $data['section_id']);
            $data['exam_schedule'] = $this->model_g::getExamSchedule($data['school_class_section']->id, $data['exam_id']);
            // dd($data['exam_schedule']);
            $data['student'] = $this->model_2::where('school_class_section_id', '=', $data['school_class_section']->id)->get();
            $i = 0;
            $j = 0;
            $data['old_std_result'] = array();
            foreach($data['exam_schedule'] as $exam) {
                // dd($exam);
                // $data['old_std_result'][$i] = array();
                foreach($data['student'] as $student) {
                    // array_push($data['old_std_result'], $this->model::where('exam_schedules_id', '=', $exam->exam_sch_id)->where('student_id', '=', $student->id)->first());
                    array_push($data['old_std_result'], $this->model_g::getStudentResult($exam->exam_sch_id, $student->id));
                    $j++;
                }
                $i++;
            }
            // dd(array_filter($data['old_std_result']));
            $data['std_result'] = $this->model_g::arrayGroupBy(json_encode(array_filter($data['old_std_result'])), 'first_name');
            // dd($data['std_result']);
            return view($this->loadView($this->view_path.'.index'), compact('data'));
        }
        else {
        $data['school'] = $this->model_4::all();
        $data['exam'] = $this->model_3::where('status', '=', 1)->get();
        return view($this->loadView($this->view_path.'.index'), compact('data'));
        }
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
}
