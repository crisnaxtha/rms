<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\Student;
use App\Model\Dsms\School;
use App\Model\Dsms\MyClass;
use App\Model\Dsms\Section;
use App\Model\Dsms\Eloquent\DM_General;
use DB;

class StudentsController extends DM_BaseController
{
    protected $panel = 'Student';
    protected $base_route ='dsms.student';
    protected $view_path = 'dsms.student';

    protected $folder_path_image;
    protected $folder_path_file;
    protected $folder = 'student';
    protected $prefix_path_image = '/upload_file/images/student/';

    public function __construct(Request $request, Student $model, DM_General $model_g, MyClass $model_1, Section $model_2, School $model_3){
        $this->model = $model;
        $this->model_g = $model_g;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
        $this->model_3 = $model_3;
        $this->folder_path_image = getcwd() . DIRECTORY_SEPARATOR . 'upload_file' . DIRECTORY_SEPARATOR . 'images' . DIRECTORY_SEPARATOR . $this->folder . DIRECTORY_SEPARATOR;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $this->panel = "Student Details";
        if ($request->isMethod('post')){
            $data['school_id'] = $request->school_id;
            $data['class_id'] = $request->class_id;
            $data['section_id'] = $request->section_id;
            $school_class = $this->model_g::getSchoolClassId($data['school_id'], $data['class_id']);
            $school_class_section = $this->model_g::getSchoolClassSection($school_class->id, $data['section_id']);
            // dd($school_class_section);
            if(isset($school_class_section)) {
                $school_class_section_id = $school_class_section->id;
            }else {
                $school_class_section_id = '';
            }
            $data['query'] = $request->search_text;
            $data['school'] = $this->model_3::all();
            $data['class'] = $this->model_1::where('status', '=', 1)->get();
            $data['section'] = $this->model_2::where('status', '=', 1)->get();
            if(isset($school_class_section_id) && isset($data['query'])){
            $data['rows'] = $this->model::where('status', '=', 1)
                                ->orWhere('school_class_section_id', '=', $school_class_section_id)
                                ->where('admission_date', 'LIKE', '%'. $data['query'].'%')
                                ->where('roll_no', 'LIKE', '%'. $data['query'].'%')
                                ->where('first_name', 'LIKE', '%'. $data['query'].'%')
                                ->where('last_name', 'LIKE', '%'. $data['query'].'%')
                                ->where('mobile_no', 'LIKE', '%'. $data['query'].'%')
                                ->where('email', 'LIKE', '%'. $data['query'].'%')
                                ->where('religion', 'LIKE', '%'. $data['query'].'%')
                                ->where('gender', 'LIKE', '%'. $data['query'].'%')
                                ->get();
            }else if(isset($school_class_section_id) && !isset($data['query'])){
                $data['rows'] = $this->model::where('status', '=', 1)
                                ->Where('school_class_section_id', '=', $school_class_section_id)
                                ->get();
            }
            else if(!isset($school_class_section_id) && isset($data['query'])){
                $data['rows'] = $this->model::where('status', '=', 1)
                                ->where('admission_date', 'LIKE', '%'. $data['query'].'%')
                                ->where('roll_no', 'LIKE', '%'. $data['query'].'%')
                                ->where('first_name', 'LIKE', '%'. $data['query'].'%')
                                ->where('last_name', 'LIKE', '%'. $data['query'].'%')
                                ->where('mobile_no', 'LIKE', '%'. $data['query'].'%')
                                ->where('email', 'LIKE', '%'. $data['query'].'%')
                                ->where('religion', 'LIKE', '%'. $data['query'].'%')
                                ->where('gender', 'LIKE', '%'. $data['query'].'%')
                                ->get();
            }
            else {
                $data['rows'] = $this->model::where('status', '=', 1)
                                ->where('admission_date', 'LIKE', '%'. $data['query'].'%')
                                ->where('roll_no', 'LIKE', '%'. $data['query'].'%')
                                ->where('first_name', 'LIKE', '%'. $data['query'].'%')
                                ->where('last_name', 'LIKE', '%'. $data['query'].'%')
                                ->where('mobile_no', 'LIKE', '%'. $data['query'].'%')
                                ->where('email', 'LIKE', '%'. $data['query'].'%')
                                ->where('religion', 'LIKE', '%'. $data['query'].'%')
                                ->where('gender', 'LIKE', '%'. $data['query'].'%')
                                ->get();
            }
            return view($this->loadView($this->view_path.'.index'), compact('data'));
        }
        else {
            $data['school'] = $this->model_3::all();
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
        $this->panel = "Student Admission";
        $data['school'] = $this->model_3::all();
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
        $data['school_id'] = $request->school_id;
        $data['class_id'] = $request->class_id;
        $data['section_id'] = $request->section_id;
        $school_class = $this->model_g::getSchoolClassId($data['school_id'], $data['class_id']);
        $school_class_section = $this->model_g::getSchoolClassSection($school_class->id, $data['section_id']);

        $row = $this->model;
        $row->school_class_section_id = $school_class_section->id;
        $row->admission_no = $request->admission_no;
        $row->roll_no = $request->roll_no;
        $row->first_name = $request->firstname;
        $row->last_name = $request->lastname;
        $row->gender = $request->gender;
        $row->dob = $request->dob;
        $row->religion = $request->religion;
        $row->mobile_no = $request->mobileno;
        $row->email = $request->email;
        $row->admission_date = $request->admission_date;
        $row->blood_group = $request->blood_group;
        // if($request->hasFile('image')){
        //     $slider->image = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image');
        // }
        $row->save();
        if($row->save()){
            session()->flash('alert-success', $this->panel.' Successfully Store');
        }else {
            session()->flash('alert-danger', $this->panel.' can not be Store');
        }
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
        $this->panel = "Student Details";
        $data['row'] = $this->model::findOrFail($id);

        return view($this->loadView($this->view_path.'.show'), compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $this->panel = "Student Details";
        $data['row'] = $this->model::findOrFail($id);
        $data['class'] = $this->model_1::where('status', '=', 1)->get();
        $data['section'] = $this->model_2::where('status', '=', 1)->get();
        $data['class_section'] = DB::table('class_sections')->where('id', '=', $data['row']->class_section_id)->first();

        return view($this->loadView($this->view_path.'.edit'), compact('data'));
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
        $class_section_id = $this->model_g::getClassSectionId($request->class_id, $request->section_id);
        $row = $this->model::findOrFail($id);
        $row->class_section_id = $class_section_id->id;
        $row->admission_no = $request->admission_no;
        $row->roll_no = $request->roll_no;
        $row->first_name = $request->firstname;
        $row->last_name = $request->lastname;
        $row->gender = $request->gender;
        $row->dob = $request->dob;
        $row->religion = $request->religion;
        $row->mobile_no = $request->mobileno;
        $row->email = $request->email;
        $row->admission_date = $request->admission_date;
        $row->blood_group = $request->blood_group;
        // if($request->hasFile('image')){
        //     $slider->image = parent::uploadImage($request, $this->folder_path_image ,$this->prefix_path_image,'image');
        // }
        $row->save();
        if($row->save()){
            session()->flash('alert-success', $this->panel.' Successfully Store');
        }else {
            session()->flash('alert-danger', $this->panel.' can not be Store');
        }
        return redirect()->route($this->base_route.'.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $this->model::destroy($id);
    }


    public function import(Request $request) {
        $this->panel = "Student Admission";

        if ($request->isMethod('post')){
            $data['class_id'] = $request->class_id;
            $data['section_id'] = $request->section_id;
            $class_section = $this->model_g::getClassSectionId($data['class_id'], $data['section_id']);
            if(isset($class_section)) {
                $class_section_id = $class_section->id;
            }else {
                $class_section_id = '';
            }

            $path = $request->file('file')->getRealPath();
            $row = 1;
            if(($handle = fopen($path, "r")) !== FALSE) {
                while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
                    $this->model::create([
                        'class_section_id'  => $class_section_id,
                        'admission_no'      => $data[0],
                        'roll_no'           => $data[1],
                        'first_name'        => $data[2],
                        'last_name'         => $data[3],
                        'dob'               => date("Y-m-d", strtotime($data[4])),
                        'religion'          => $data[5],
                        'mobile_no'         => $data[6],
                        'email'             => $data[7],
                        'admission_date'    => date("Y-m-d", strtotime($data[8])),
                        'blood_group'       => $data[9],
                        'gender'            => $data[10],
                    ]);
                }
            fclose($handle);
            }
            session()->flash('alert-success', $this->panel.' Successfully Imported');
            return view($this->loadView($this->view_path.'.import'), compact('data'));
        }
        else {
            $data['class'] = $this->model_1::where('status', '=', 1)->get();
            return view($this->loadView($this->view_path.'.import'), compact('data'));
        }
    }
}
