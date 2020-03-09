<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\User;use App\Model\Dsms\ExamResult;
use App\Model\Dsms\Eloquent\DM_General;
use App\Model\Dsms\MyClass;
use App\Model\Dsms\Exam;
use App\Model\Dsms\Student;
use App\Model\Dsms\School;
use App\Model\Dsms\Section;
use App\Model\Dsms\Subject;

class HomeController extends DM_BaseController
{
    protected $panel = 'Home';
    protected $base_route ='';
    protected $view_path = 'dsms';

    public function __construct(Request $request, ExamResult $model, MyClass $model_1,Student $model_2, Exam $model_3, School $model_4, Section $model_5, Subject $model_6, DM_General $model_g){
        $this->middleware(['auth', 'status']);
        $this->model = $model;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
        $this->model_3 = $model_3;
        $this->model_4 = $model_4;
        $this->model_5 = $model_5;
        $this->model_6 = $model_6;
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
        $data['class'] = $this->model_1::where('status', '=', 1)->get();
        $data['section'] = $this->model_5::where('status', '=', 1)->get();
        $data['exam'] = $this->model_3::where('status', '=', 1)->get();
        $data['student'] = $this->model_2::where('status', '=', 1)->get();
        $data['subject'] = $this->model_6::where('status', '=', 1)->get();
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
}
