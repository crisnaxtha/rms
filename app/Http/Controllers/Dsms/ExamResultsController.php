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
use App\Model\Dsms\Report;
use DB;

class ExamResultsController extends DM_BaseController
{
    protected $panel = 'Marks Register';
    protected $base_route ='dsms.marks';
    protected $view_path = 'dsms.marks';

    public function __construct(Request $request, ExamResult $model, MyClass $model_1,Student $model_2, Exam $model_3, School $model_4, Section $model_5,GradeSheetSetting $model_6, Session $model_7, Report $model_8, DM_General $model_g){
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
        $this->model_8 = $model_8;
        $this->model_g = $model_g;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $this->panel = "Grade View";
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

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $data['sessions'] = $this->model_7::all();
        $data['exam'] = $this->model_3::where('status', '=', 1)->get();
        $data['school_class_sec'] = $this->model_g::joinAllSchoolClassSection();

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
            if($request->isMethod('POST') || $request->isMethod('PUT')){
            $data = $request->data;
            //initiated for report
            $marks['obtain_total_th_marks'] = 0;
            $marks['obtain_total_pr_marks'] = 0;
            $marks['obtain_total_marks'] = 0;
            $marks['grand_total_th_marks'] = 0;
            $marks['grand_total_marks'] = 0;
            $marks['total_grade_credit_hour'] = 0;
            $marks['subjects_no'] = count($data);
            $marks['outcome'] = "PASS";

            //get id from form
            $marks['session_id'] = $request->session_id;
            $marks['exam_id'] = $request->exam_id;
            $marks['school_class_sec_id'] = $request->school_class_sec_id;
            $marks['student_id'] = $request->student_id;


            foreach($data as $row) {
                //grand total marks of the subjects
                if(isset($row['school_class_section_subject_id'])){
                    $data['subject'] = $this->model_g::getSubjectFromSchoolClassSec($row['school_class_section_subject_id']);
                    $marks['grand_total_th_marks'] += $data['subject']->theory_full_marks;
                    $marks['grand_total_marks'] += ($data['subject']->theory_full_marks + $data['subject']->practical_full_marks);
                }
                //check theory attendance
                if(isset($row['th_attendance'])){
                    $marks['theory_marks'] = NULL;
                    $marks['theory_grade'] = NULL;
                }elseif(isset($row['theory_marks'])) {
                    $marks['theory_marks'] = $this->model_g::checkTheoryMarks($row['school_class_section_subject_id'], $row['theory_marks']);
                    $th_outcome =  $this->model_g::checkTheoryOutcome($row['school_class_section_subject_id'], $row['theory_marks']);
                    if($th_outcome) {
                        $marks['outcome'] = "FAIL";
                    }

                    $grade_point = $this->model_g->getTheoryGrade($row['school_class_section_subject_id'], $marks['theory_marks']);
                    if(isset($grade_point[0])){
                        $marks['theory_grade'] = $grade_point[0];
                    }else {
                        $marks['theory_grade'] = NULL;
                    }
                    $row['th_attendance'] = "Pre";
                }else {
                    $marks['theory_marks'] = NULL;
                    $marks['theory_grade'] = NULL;
                    $row['th_attendance'] = NULL;
                }
                //check practical attendance
                if(isset($row['pr_attendance'])){
                    $marks['practical_marks'] = NULL;
                    $marks['practical_grade'] = NULL;
                }elseif(isset($row['practical_marks']))  {
                    $marks['practical_marks'] = $this->model_g::checkPracticalMarks($row['school_class_section_subject_id'], $row['practical_marks']);
                    $pr_outcome =  $this->model_g::checkPracticalOutcome($row['school_class_section_subject_id'], $row['theory_marks']);
                    if($pr_outcome) {
                        $marks['outcome'] = "FAIL";
                    }

                    $grade_point = $this->model_g->getPracticalGrade($row['school_class_section_subject_id'], $marks['practical_marks']);
                    if(isset($grade_point[0])){
                        $marks['practical_grade'] = $grade_point[0];
                    }else {
                        $marks['practical_grade'] = NULL;
                    }
                    $row['pr_attendance'] = "Pre";
                }else {
                    $marks['practical_marks'] = NULL;
                    $marks['practical_grade'] = NULL;
                    $row['pr_attendance'] = NULL;
                }
                //check theory marks and practical marks
                if(isset($marks['theory_marks']) || isset($marks['practical_marks'])){
                    //get total marks of single subject
                    $marks['total_marks'] = ($marks['theory_marks'] + $marks['practical_marks']);
                    $grade_point = $this->model_g->getFinalGrade($row['school_class_section_subject_id'], $marks['total_marks']);
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
                    $marks['grade_credit_hour'] = $this->model_g->getGradeCreditHour($row['school_class_section_subject_id'], $marks['grade_point']);
                    //get total marks of all subjects
                    $marks['obtain_total_th_marks'] += $marks['theory_marks'];
                    $marks['obtain_total_pr_marks'] += $marks['practical_marks'];
                    $marks['obtain_total_marks'] += ($marks['theory_marks'] + $marks['practical_marks']);
                    $marks['total_grade_credit_hour'] += $marks['grade_credit_hour'];
                }else {
                    $marks['total_marks'] = NULL;
                    $marks['final_grade'] = NULL;
                    $marks['grade_point'] = NULL;
                    $marks['grade_credit_hour'] = NULL;
                }

                $old_data =  DB::table('exam_results')
                                ->where('session_id', '=', $marks['session_id'])
                                ->where('exam_id', '=',$marks['exam_id'])
                                ->where('student_id', '=', $marks['student_id'])
                                ->where('school_class_section_subject_id', '=', $row['school_class_section_subject_id'])
                                ->first();
                if(isset($old_data)){
                    DB::table('exam_results')->where('id', '=', $old_data->id)->update([
                        'session_id' => $marks['session_id'],
                        'exam_id' => $marks['exam_id'],
                        'school_class_section_subject_id' => $row['school_class_section_subject_id'],
                        'student_id' => $marks['student_id'],
                        'theory_attendance' => $row['th_attendance'],
                        'practical_attendance' => $row['pr_attendance'],
                        'theory_get_marks' => $marks['theory_marks'],
                        'theory_grade' => $marks['theory_grade'],
                        'practical_get_marks' => $marks['practical_marks'],
                        'practical_grade' => $marks['practical_grade'],
                        'total_marks' => $marks['total_marks'],
                        'final_grade' => $marks['final_grade'],
                        'grade_point' => $marks['grade_point'],
                        'grade_credit_hour' => $marks['grade_credit_hour'],
                        'description' => $marks['outcome'],
                        'updated_at' => date('Y-m-d-h-m-s')
                    ]);
                }
                else {
                    DB::table('exam_results')->insert([
                        'session_id' => $marks['session_id'],
                        'exam_id' => $marks['exam_id'],
                        'school_class_section_subject_id' => $row['school_class_section_subject_id'],
                        'student_id' => $marks['student_id'],
                        'theory_attendance' => $row['th_attendance'],
                        'practical_attendance' => $row['pr_attendance'],
                        'theory_get_marks' => $marks['theory_marks'],
                        'theory_grade' => $marks['theory_grade'],
                        'practical_get_marks' => $marks['practical_marks'],
                        'practical_grade' => $marks['practical_grade'],
                        'total_marks' => $marks['total_marks'],
                        'final_grade' => $marks['final_grade'],
                        'grade_point' => $marks['grade_point'],
                        'description' => $marks['outcome'],
                        'grade_credit_hour' => $marks['grade_credit_hour'],
                        'created_at' => date('Y-m-d-h-m-s')
                    ]);
                }

            }
            //calculation of the GPA and percentage
            $marks['gpa'] = dm_calGPA($marks['total_grade_credit_hour'], $marks['subjects_no']);
            $marks['percentage'] = dm_calPercentage($marks['obtain_total_marks'], $marks['grand_total_marks']);

            $old_report =  DB::table('reports')->where('session_id', '=', $marks['session_id'])
                                ->where('exam_id', '=',$marks['exam_id'])
                                ->where('student_id', '=', $marks['student_id'])
                                ->where('school_class_section_id', '=', $marks['school_class_sec_id'])
                                ->first();
            if(isset($old_report)) {
                DB::table('reports')->where('id', '=', $old_report->id)->update([
                    'session_id' => $marks['session_id'],
                    'exam_id' => $marks['exam_id'],
                    'school_class_section_id' => $marks['school_class_sec_id'],
                    'student_id' => $marks['student_id'],
                    'obtain_total_th_marks' => $marks['obtain_total_th_marks'],
                    'obtain_total_pr_marks' => $marks['obtain_total_pr_marks'],
                    'obtain_total_marks' => $marks['obtain_total_marks'],
                    'grand_total_th_marks' => $marks['grand_total_th_marks'],
                    'grand_total_marks' => $marks['grand_total_marks'],
                    'percentage' => $marks['percentage'],
                    'gpa' => $marks['gpa'],
                    'results' => $marks['outcome'],
                ]);
            }
            else {
                DB::table('reports')->insert([
                    'session_id' => $marks['session_id'],
                    'exam_id' => $marks['exam_id'],
                    'school_class_section_id' => $marks['school_class_sec_id'],
                    'student_id' => $marks['student_id'],
                    'obtain_total_th_marks' => $marks['obtain_total_th_marks'],
                    'obtain_total_pr_marks' => $marks['obtain_total_pr_marks'],
                    'obtain_total_marks' => $marks['obtain_total_marks'],
                    'grand_total_th_marks' => $marks['grand_total_th_marks'],
                    'grand_total_marks' => $marks['grand_total_marks'],
                    'percentage' => $marks['percentage'],
                    'gpa' => $marks['gpa'],
                    'results' => $marks['outcome'],
                ]);
            }
        }
        session()->flash('alert-success', $this->panel.' Successfully Store');
        if($request->isMethod('POST')){
            return redirect()->route($this->base_route.'.create');
        }else {
            return redirect()->route($this->base_route.'.index');
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($session_id, $exam_id, $school_class_section_id, $student_id) {
        $data['session_id'] = $session_id;
        $data['exam_id'] = $exam_id;
        $data['school_class_sec_id'] = $school_class_section_id;
        $data['student_id'] = $student_id;

        $data['school_id'] = $this->model_g::getSchoolClassAndSection($data['school_class_sec_id'])->school_id;
        $data['class_id'] = $this->model_g::getSchoolClassAndSection($data['school_class_sec_id'])->class_id;
        $data['section_id'] = $this->model_g::getSchoolClassAndSection($data['school_class_sec_id'])->section_id;

        $data['school_class_section_subjects'] = $this->model_g::getSchoolClassSectionSubjects($data['school_class_sec_id']);

        $data['result'] = array();
        foreach($data['school_class_section_subjects'] as $subject) {
            $s_result = $this->model_g::getStudentResult($data['session_id'], $data['exam_id'], $data['student_id'], $subject->id);
            if(isset($s_result)){
                array_push($data['result'], $s_result);
            }
        }
        $data['ms_setting'] = $this->model_6::first();

        // dd($data['result']);
        return view($this->loadView($this->view_path.'.edit'), compact('data'));
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $session_id, $exam_id, $school_class_section_id, $student_id)
    {
        if($request->ajax()){
            $data['session_id'] = $session_id;
            $data['exam_id'] = $exam_id;
            $data['school_class_sec_id'] = $school_class_section_id;
            $data['student_id'] = $student_id;

            $data['school_class_section_subjects'] = $this->model_g::getSchoolClassSectionSubjects($data['school_class_sec_id']);
            $s_report = $this->model_g::getStudentReport($data['session_id'], $data['exam_id'], $data['student_id'], $data['school_class_sec_id']);
            $this->model_8::destroy($s_report->id);
            foreach($data['school_class_section_subjects'] as $subject) {
                $s_result = $this->model_g::getStudentResult($data['session_id'], $data['exam_id'], $data['student_id'], $subject->id);
                if(isset($s_result)){
                    // var_dump($s_result);
                    $this->model::destroy($s_result->id);

                }
            }
            return true;
        }
    }

    public function printGradesheet($session_id, $exam_id, $school_class_section_id, $student_id) {
        $data['session_id'] = $session_id;
        $data['exam_id'] = $exam_id;
        $data['school_class_sec_id'] = $school_class_section_id;
        $data['student_id'] = $student_id;

        $data['school_id'] = $this->model_g::getSchoolClassAndSection($data['school_class_sec_id'])->school_id;
        $data['class_id'] = $this->model_g::getSchoolClassAndSection($data['school_class_sec_id'])->class_id;

        $data['school_class_section_subjects'] = $this->model_g::getSchoolClassSectionSubjects($data['school_class_sec_id']);

        $data['result'] = array();
        foreach($data['school_class_section_subjects'] as $subject) {
            $s_result = $this->model_g::getStudentResult($data['session_id'], $data['exam_id'], $data['student_id'], $subject->id);
            if(isset($s_result)){
                array_push($data['result'], $s_result);
            }
        }
        $data['ms_setting'] = $this->model_6::first();

        // dd($data['result']);
        return view($this->loadView($this->view_path.'.gradesheet'), compact('data'));
    }

    public function marksView(Request $request) {
        $this->panel = "Marks View";
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
        return view($this->loadView($this->view_path.'.marks'), compact('data'));

    }
}
