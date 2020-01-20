<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\ExamSchedule;
use App\Model\Dsms\Eloquent\DM_General;
use App\Model\Dsms\MyClass;
use App\Model\Dsms\Subject;
use App\Model\Dsms\Exam;
use App\Model\Dsms\School;
use DB;

class ExamScheduleController extends DM_BaseController
{
    protected $panel = 'Exam Schedule';
    protected $base_route ='dsms.exam_schedule';
    protected $view_path = 'dsms.exam_schedule';

    public function __construct(Request $request, ExamSchedule $model, MyClass $model_1, Subject $model_2, Exam $model_3, School $model_4, DM_General $model_g){
        $this->model = $model;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
        $this->model_3 = $model_3;
        $this->model_4 = $model_4;
        $this->model_g = $model_g;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['school'] = $this->model_4::all();
        return view($this->loadView($this->view_path.'.index'), compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['school'] = $this->model_4::all();
        $data['exam'] = $this->model_3::where('status', '=', 1)->get();
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
        $school_id = $request->school_id;
        $class_id = $request->class_id;
        $section_id = $request->section_id;
        $exam_id = $request->exam_id;

        $i = $request->i;
        $school_class = $this->model_g::getSchoolClassId($school_id, $class_id);
        $school_class_section = $this->model_g::getSchoolClassSection($school_class->id, $section_id);
        foreach($i as $row) {
            $subject_id = $request->subject[$row];
            $school_class_section_subject = $this->model_g::getSchoolClassSectionSubject($school_class_section->id, $subject_id);
            DB::table('exam_schedules')->insert([
                'exam_id' => $exam_id,
                'school_class_section_subject_id' => $school_class_section_subject->id,
                'date_of_exam' => $request->date[$row],
                'start_to' => $request->start_time[$row],
                'end_from' => $request->end_time[$row],
                'room_no' => $request->room[$row],
                'full_marks' => $request->full_marks[$row],
                'passing_marks' => $request->pass_marks[$row]
            ]);
        }
        session()->flash('alert-success', $this->panel.' Successfully Store');
        return redirect()->route($this->base_route.'.create');
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
            $school_id = $request->school_id;
            $class_id = $request->class_id;
            $section_id = $request->section_id;
            $school_class = $this->model_g::getSchoolClassId($school_id, $class_id);
            $school_class_section = $this->model_g::getSchoolClassSection($school_class->id, $section_id);
            $exam_schedules = $this->model_g::getExamSchedule($school_class_section->id);
            $unique_exams_schedules[] = $this->model_g::arrayGroupBy($exam_schedules, 'exm_title');
            return $unique_exams_schedules;
        }
    }

    public function getSchoolClassSectionSubjects(Request $request) {
        if($request->ajax()){
            $school_id = $request->school_id;
            $class_id = $request->class_id;
            $section_id = $request->section_id;
            $school_class = $this->model_g::getSchoolClassId($school_id, $class_id);
            $school_class_section = $this->model_g::getSchoolClassSection($school_class->id, $section_id);
            $subjects = $this->model_g::getSchoolClassSectionSubjects($school_class_section->id);
            return $subjects;
        }
    }
}
