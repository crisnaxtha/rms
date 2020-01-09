<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\Student;
use App\Model\Dsms\Eloquent\DM_General;

class StudentsController extends DM_BaseController
{
    protected $panel = 'Student';
    protected $base_route ='dsms.student';
    protected $view_path = 'dsms.student';

    public function __construct(Request $request, Student $model, DM_General $model_g){
        $this->model = $model;
        $this->model_g = $model_g;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $this->panel = "Student Admission";
        return view($this->loadView($this->view_path.'.create'));
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
