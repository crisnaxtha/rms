<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\ExamResult;
use App\Model\Dsms\Eloquent\DM_General;
use App\Model\Dsms\MyClass;
use App\Model\Dsms\Exam;
use App\Model\Dsms\GradeSheetSetting;
use App\Model\Dsms\Student;
use App\Model\Dsms\School;
use App\Model\Dsms\Section;
use App\Model\Dsms\Session;
use DB;

class ExamResultsController extends DM_BaseController
{
    protected $panel = 'Marks Register';
    protected $base_route ='dsms.marks';
    protected $view_path = 'dsms.marks';

    public function __construct(Request $request, ExamResult $model, MyClass $model_1,Student $model_2, Exam $model_3, School $model_4, Section $model_5,GradeSheetSetting $model_6, Session $model_7, DM_General $model_g){
        $this->middleware(['auth', 'status']);
        $this->middleware('permission:mark-register-list', ['only' => ['index']]);
        $this->middleware('permission:mark-register-create', ['only' => ['create','store']]);
        // $this->middleware('permission:affiliated-edit', ['only' => ['edit','update']]);
        // $this->middleware('permission:mark-register-delete', ['only' => ['destroy']]);
        $this->model = $model;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
        $this->model_3 = $model_3;
        $this->model_4 = $model_4;
        $this->model_5 = $model_5;
        $this->model_6 = $model_6;
        $this->model_7 = $model_7;
        $this->model_g = $model_g;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $this->panel = "Grades View";
        if ($request->isMethod('post')){
            $data['sessions'] = $this->model_7::all();
            $data['school'] = $this->model_4::all();
            $data['class'] = $this->model_1::where('status', '=', 1)->get();
            $data['section'] = $this->model_5::where('status', '=', 1)->get();
            $data['exam'] = $this->model_3::where('status', '=', 1)->get();

            $data['session_id'] = $request->session_id;
            $data['school_id'] = $request->school_id;
            $data['class_id'] = $request->class_id;
            $data['section_id'] = $request->section_id;
            $data['exam_id'] = $request->exam_id;

            $data['school_class'] = $this->model_g::getSchoolClassId($data['school_id'], $data['class_id']);
            $data['school_class_section'] = $this->model_g::getSchoolClassSection($data['school_class']->id, $data['section_id']);
            $data['exam_schedule'] = $this->model_g::getExamSchedule($data['school_class_section']->id, $data['exam_id']);
            // dd($data['exam_schedule']);
            $data['student'] = $this->model_2::where('session_id', '=', $data['session_id'])->where('school_class_section_id', '=', $data['school_class_section']->id)->get();
            $i = 0;
            $j = 0;
            $data['old_std_result'] = array();
            foreach($data['exam_schedule'] as $exam) {
                foreach($data['student'] as $student) {
                    array_push($data['old_std_result'], $this->model_g::showStudentResult($exam->exam_sch_id, $student->id));
                    $j++;
                }
                $i++;
            }
            $data['std_result'] = $this->model_g::arrayGroupBy(json_encode(array_filter($data['old_std_result'])), 'student_id');
            // dd($data['old_std_result']);
            // dd($data['std_result']);
            $data['ms_setting'] = $this->model_6::first();

            return view($this->loadView($this->view_path.'.index'), compact('data'));
        }
        else {
            $data['sessions'] = $this->model_7::all();
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
    public function create(Request $request)
    {
        if ($request->isMethod('post')){
            $data['sessions'] = $this->model_7::all();
            $data['school'] = $this->model_4::all();
            $data['class'] = $this->model_1::where('status', '=', 1)->get();
            $data['section'] = $this->model_5::where('status', '=', 1)->get();
            $data['exam'] = $this->model_3::where('status', '=', 1)->get();

            $data['session_id'] = $request->session_id;
            $data['school_id'] = $request->school_id;
            $data['class_id'] = $request->class_id;
            $data['section_id'] = $request->section_id;
            $data['exam_id'] = $request->exam_id;

            $data['school_class'] = $this->model_g::getSchoolClassId($data['school_id'], $data['class_id']);
            $data['school_class_section'] = $this->model_g::getSchoolClassSection($data['school_class']->id, $data['section_id']);

            $data['exam_schedule'] = $this->model_g::getExamSchedule($data['school_class_section']->id, $data['exam_id']);
            // dd($data['exam_schedule']);
            $data['student'] = $this->model_2::where('session_id', '=', $data['session_id'])->where('school_class_section_id', '=', $data['school_class_section']->id)->get();
            // dd($data['student']);

            $i = 0;
            $j = 0;
            $data['old_std_result'] = array();
            foreach($data['exam_schedule'] as $exam) {
                foreach($data['student'] as $student) {
                    array_push($data['old_std_result'], $this->model_g::getStudentResult($exam->exam_sch_id, $student->id));
                    $j++;
                }
                $i++;
            }
            $data['std_result'] = $this->model_g::arrayGroupBy(json_encode(array_filter($data['old_std_result'])), 'student_id');
            dd($data['std_result']);
            return view($this->loadView($this->view_path.'.create'), compact('data'));
        }
        else {
            $data['sessions'] = $this->model_7::all();
            $data['school'] = $this->model_4::all();
            $data['exam'] = $this->model_3::where('status', '=', 1)->get();
            return view($this->loadView($this->view_path.'.create'), compact('data'));
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->data;
        // dd($data);
        foreach($data as $rows) {
            foreach($rows as $row){
                $marks['exam_schedule_id'] = $row['exam_schedule_id'];
                $marks['student_id'] = $row['student_id'];

                if(isset($row['th_attendance'])){
                    $marks['theory_marks'] = NULL;
                    $marks['theory_grade'] = NULL;
                }else {
                    $marks['theory_marks'] = $this->model_g::checkTheoryMarks($marks['exam_schedule_id'], $row['theory_marks']);
                    $grade_point = $this->model_g->getTheoryGrade($marks['exam_schedule_id'],$marks['theory_marks']);
                    // dd($grade_point);
                    if(isset($grade_point[0])){
                        $marks['theory_grade'] = $grade_point[0];
                    }else {
                        $marks['theory_grade'] = NULL;
                    }
                    $row['th_attendance'] = "Pre";
                }
                if(isset($row['pr_attendance'])){
                    $marks['practical_marks'] = NULL;
                    $marks['practical_grade'] = NULL;
                }else {
                    $marks['practical_marks'] = $this->model_g::checkPracticalMarks($marks['exam_schedule_id'], $row['practical_marks']);;
                    $grade_point = $this->model_g->getPracticalGrade($marks['exam_schedule_id'],$marks['practical_marks']);

                    if(isset($grade_point[0])){
                        $marks['practical_grade'] = $grade_point[0];
                    }else {
                        $marks['practical_grade'] = NULL;
                    }
                    $row['pr_attendance'] = "Pre";
                }

                if(isset($marks['theory_marks']) || isset($marks['practical_marks'])){
                    $marks['total_marks'] = $marks['theory_marks'] + $marks['practical_marks'];
                    $grade_point = $this->model_g->getFinalGrade($marks['exam_schedule_id'],$marks['total_marks']);
                    if(isset($grade_point[0])){
                        $marks['final_grade'] = $grade_point[0];
                    }else {
                        $marks['final_grade'] = NULL;
                    }
                    if(isset($grade_point[1])){
                        $marks['grade_point'] = $grade_point[1];
                    }else {
                        $marks['grade_point'] = NULL;
                    }
                    $marks['grade_credit_hour'] = $this->model_g->getGradeCreditHour($marks['exam_schedule_id'], $marks['grade_point']);
                }else {
                    $marks['total_marks'] = NULL;
                    $marks['final_grade'] = NULL;
                    $marks['grade_point'] = NULL;
                    $marks['grade_credit_hour'] = NULL;
                }

                $old_data =  DB::table('exam_results')->where('exam_schedules_id', '=', $marks['exam_schedule_id'])->where('student_id', '=', $marks['student_id'])->first();
                if(isset($old_data)){
                    DB::table('exam_results')->where('id', '=', $old_data->id)->update([
                        'theory_attendance' => $row['th_attendance'],
                        'practical_attendance' => $row['pr_attendance'],
                        'exam_schedules_id' => $marks['exam_schedule_id'],
                        'student_id' => $marks['student_id'],
                        'theory_get_marks' => $marks['theory_marks'],
                        'theory_grade' => $marks['theory_grade'],
                        'practical_get_marks' => $marks['practical_marks'],
                        'practical_grade' => $marks['practical_grade'],
                        'total_marks' => $marks['total_marks'],
                        'final_grade' => $marks['final_grade'],
                        'grade_point' => $marks['grade_point'],
                        'grade_credit_hour' => $marks['grade_credit_hour'],
                        'created_at' => date('Y-m-d-h-m-s')
                    ]);
                }
                else {
                    DB::table('exam_results')->insert([
                        'theory_attendance' => $row['th_attendance'],
                        'practical_attendance' => $row['pr_attendance'],
                        'exam_schedules_id' => $marks['exam_schedule_id'],
                        'student_id' => $marks['student_id'],
                        'theory_get_marks' => $marks['theory_marks'],
                        'theory_grade' => $marks['theory_grade'],
                        'practical_get_marks' => $marks['practical_marks'],
                        'practical_grade' => $marks['practical_grade'],
                        'total_marks' => $marks['total_marks'],
                        'final_grade' => $marks['final_grade'],
                        'grade_point' => $marks['grade_point'],
                        'grade_credit_hour' => $marks['grade_credit_hour'],
                        'created_at' => date('Y-m-d-h-m-s')
                    ]);
                }
            }
        }
        // die;
        session()->flash('alert-success', $this->panel.' Successfully Store');
        return redirect()->route($this->base_route.'.create');
    }

    public function printMarksheet($exam_id, $school_id, $class_id, $section_id, $student_id) {
        $data['exam_id'] = $exam_id;
        $data['school_id'] = $school_id;
        $data['class_id'] = $class_id;
        $data['section_id'] = $section_id;
        $data['student_id'] = $student_id;

        $data['school'] = $this->model_4::all();
        $data['class'] = $this->model_1::where('status', '=', 1)->get();
        $data['section'] = $this->model_5::where('status', '=', 1)->get();
        $data['exam'] = $this->model_3::where('status', '=', 1)->get();

        $data['school_class'] = $this->model_g::getSchoolClassId($data['school_id'], $data['class_id']);
        $data['school_class_section'] = $this->model_g::getSchoolClassSection($data['school_class']->id, $data['section_id']);
        $data['exam_schedule'] = $this->model_g::getExamSchedule($data['school_class_section']->id, $data['exam_id']);
        $data['result'] = array();
        foreach($data['exam_schedule'] as $exam) {
                array_push($data['result'], $this->model_g::getStudentResult($exam->exam_sch_id, $data['student_id']));
        }
        $data['ms_setting'] = $this->model_6::first();

        // dd($data['result']);
        return view($this->loadView($this->view_path.'.gradesheet'), compact('data'));
    }
}
