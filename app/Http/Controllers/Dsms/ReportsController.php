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
use App\Model\Dsms\Subject;
use App\Model\Dsms\Session;
use App\Model\Dsms\Report;
use DB;

class ReportsController extends DM_BaseController
{
    protected $panel = 'Report';
    protected $base_route ='dsms.report';
    protected $view_path = 'dsms.report';

    public function __construct(Request $request, ExamResult $model, MyClass $model_1,Student $model_2, Exam $model_3, School $model_4, Section $model_5,GradeSheetSetting $model_6, Session $model_7, Report $model_8, Subject $model_9, DM_General $model_g){
        $this->middleware(['auth', 'status']);
        // $this->middleware('permission:mark-register-list', ['only' => ['index']]);
        // $this->middleware('permission:mark-register-create', ['only' => ['create','store']]);
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
        $this->model_8 = $model_8;
        $this->model_9 = $model_9;
        $this->model_g = $model_g;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $this->panel = "Marks Ledger";
        if ($request->isMethod('post')){
            $data['sessions'] = $this->model_7::all();
            $data['exam'] = $this->model_3::where('status', '=', 1)->get();
            $data['school_class_sec'] = $this->model_g::joinAllSchoolClassSection();

            $data['session_id'] = $request->session_id;
            $data['exam_id'] = $request->exam_id;
            $data['school_class_sec_id'] = $request->school_class_sec_id;

            $data['school_id'] = $this->model_g::getSchoolClassAndSection($data['school_class_sec_id'])->school_id;
            $data['class_id'] = $this->model_g::getSchoolClassAndSection($data['school_class_sec_id'])->class_id;

            $data['school_class_section_subjects'] = $this->model_g::getSchoolClassSectionSubjects($data['school_class_sec_id']);
            // dd($data['school_class_section_subjects']);

            $data['students'] = $this->model_g::joinSchoolClassSectionSubjectStudent($data['session_id'], $data['school_class_sec_id']);
            // dd($data['students']);
            $data['old_std_result'] = array();
            foreach($data['students'] as $student) {
                $s_result = $this->model_g::getStudentResult($data['session_id'], $data['exam_id'], $student->id, $student->school_class_section_subject_id);
                if(isset($s_result)){
                    array_push($data['old_std_result'], $s_result);
                }
            }
            $data['std_result'] = $this->model_g::arrayGroupBy(json_encode(array_filter($data['old_std_result'])), 'student_id');
            // dd($data['old_std_result']);
            // dd($data['std_result']);
            $data['ms_setting'] = $this->model_6::first();
        }
        else {
            $data['sessions'] = $this->model_7::all();
            $data['exam'] = $this->model_3::where('status', '=', 1)->get();
            $data['school_class_sec'] = $this->model_g::joinAllSchoolClassSection();
        }
        return view($this->loadView($this->view_path.'.index'), compact('data'));
    }

    //get Top three student base on School Class section
    public function topThreeStudent(Request $request) {
        $this->panel = "Top Three Student";
        if ($request->isMethod('post')){
            $data['sessions'] = $this->model_7::all();
            $data['exam'] = $this->model_3::where('status', '=', 1)->get();
            $data['school_class_sec'] = $this->model_g::joinAllSchoolClassSection();

            $data['session_id'] = $request->session_id;
            $data['exam_id'] = $request->exam_id;
            $data['school_class_sec_id'] = $request->school_class_sec_id;

            $data['school_id'] = $this->model_g::getSchoolClassAndSection($data['school_class_sec_id'])->school_id;
            $data['class_id'] = $this->model_g::getSchoolClassAndSection($data['school_class_sec_id'])->class_id;

            $data['school_class_section_subjects'] = $this->model_g::getSchoolClassSectionSubjects($data['school_class_sec_id']);


            $data['top_report'] = $this->model_8::where('session_id', '=', $data['session_id'])
                                            ->where('exam_id', '=', $data['exam_id'])
                                            ->where('school_class_section_id', '=', $data['school_class_sec_id'])
                                            ->orderBy('obtain_total_marks', 'desc')
                                            ->take(5)
                                            ->get();

            // $data['top_report'] = $this->model_g::joinSubjectReport($data['session_id'], $data['exam_id'], $data['school_class_sec_id']);
            // dd($data['top_report']);

            $data['old_std_result'] = array();

            foreach($data['school_class_section_subjects'] as $subject){
                foreach($data['top_report'] as $student) {
                    $s_result = $this->model_g::getStudentResult($data['session_id'], $data['exam_id'], $student->student_id, $subject->id);
                    if(isset($s_result)){
                        array_push($data['old_std_result'], $s_result);
                    }
                }
            }
            $data['std_result'] = $this->model_g::arrayGroupByNotSorted(json_encode(array_filter($data['old_std_result'])), 'student_id');
            // dd($data['old_std_result']);
            // dd($data['std_result']);
            $data['ms_setting'] = $this->model_6::first();


        }
        else {
            $data['sessions'] = $this->model_7::all();
            $data['exam'] = $this->model_3::where('status', '=', 1)->get();
            $data['school_class_sec'] = $this->model_g::joinAllSchoolClassSection();
        }
        return view($this->loadView($this->view_path.'.top_student'), compact('data'));
    }
}
