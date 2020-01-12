<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\Student;
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

    public function __construct(Request $request, Student $model, DM_General $model_g, MyClass $model_1, Section $model_2){
        $this->model = $model;
        $this->model_g = $model_g;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
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
            $data['class_id'] = $request->class_id;
            $data['section_id'] = $request->section_id;
            $class_section = $this->model_g::getClassSectionId($data['class_id'], $data['section_id']);
            if(isset($class_section)) {
                $class_section_id = $class_section->id;
            }else {
                $class_section_id = '';
            }
            $data['query'] = $request->search_text;
            $data['class'] = $this->model_1::where('status', '=', 1)->get();
            $data['section'] = $this->model_2::where('status', '=', 1)->get();
            $data['rows'] = $this->model::where('status', '=', 1)
                                ->orWhere('class_section_id', '=', $class_section_id)
                                ->where('admission_date', 'LIKE', '%'. $data['query'].'%')
                                ->where('roll_no', 'LIKE', '%'. $data['query'].'%')
                                ->where('first_name', 'LIKE', '%'. $data['query'].'%')
                                ->where('last_name', 'LIKE', '%'. $data['query'].'%')
                                ->where('mobile_no', 'LIKE', '%'. $data['query'].'%')
                                ->where('email', 'LIKE', '%'. $data['query'].'%')
                                ->where('religion', 'LIKE', '%'. $data['query'].'%')
                                ->where('gender', 'LIKE', '%'. $data['query'].'%')
                                ->get();
            return view($this->loadView($this->view_path.'.index'), compact('data'));
        }
        else {
            $data['class'] = $this->model_1::where('status', '=', 1)->get();
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
        $data['class'] = $this->model_1::where('status', '=', 1)->get();
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
        $class_section_id = $this->model_g::getClassSectionId($request->class_id, $request->section_id);
        $row = $this->model;
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

    }
}
