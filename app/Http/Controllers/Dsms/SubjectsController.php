<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\Subject;
use App\Model\Dsms\Eloquent\DM_General;

class SubjectsController extends DM_BaseController
{
    protected $panel = 'Subject';
    protected $base_route ='dsms.subject';
    protected $view_path = 'dsms.subject';

    public function __construct(Request $request, Subject $model, DM_General $model_g){
        $this->middleware(['auth', 'status']);
        $this->middleware('permission:subject-list', ['only' => ['index']]);
        $this->middleware('permission:subject-create', ['only' => ['create','store']]);
        $this->middleware('permission:subject-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:subject-delete', ['only' => ['destroy']]);
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
        $data['rows'] = $this->model::all();
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
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'credit_hour' => 'required|integer',
            'theory_full_marks' => 'required|integer',
            'practical_full_marks' => 'integer|nullable',
        ],
        [
            'title.required' => 'You must enter the SUBJECT name!',
            'credit_hour.required' => 'You must enter the SUBJECT credit Hour',
            'credit_hour.integer' => 'Credit Hour must be INTEGER',
            'theory_full_marks.required' => 'You must enter the SUBJECT THEORY FULL MARKS',
            'theory_full_marks.integer' => 'Theory Full Marks must be INTEGER',
            'practical_full_marks.integer' => 'Practical Full Marks must be INTEGER'
        ]);
        $row = $this->model;
        $row->title = $request->title;
        $row->theory_full_marks = $request->theory_full_marks;
        $row->practical_full_marks = $request->practical_full_marks;
        $row->credit_hour = $request->credit_hour;
        $row->save();

        if($row->save()){
            session()->flash('alert-success', $this->panel.' Successfully Store');
        }else {
            session()->flash('alert-danger', $this->panel.' can not be Store');
        }
        return redirect()->route($this->base_route.'.index');
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
        $data['rows'] = $this->model::all();
        $data['single'] = $this->model::findOrFail($id);
        return view($this->loadView($this->view_path.'.index'), compact('data'));
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
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'credit_hour' => 'required|integer',
            'theory_full_marks' => 'required|integer',
            'practical_full_marks' => 'integer|nullable',
        ],
        [
            'title.required' => 'You must enter the SUBJECT name!',
            'credit_hour.required' => 'You must enter the SUBJECT credit Hour',
            'credit_hour.integer' => 'Credit Hour must be INTEGER',
            'theory_full_marks.required' => 'You must enter the SUBJECT THEORY FULL MARKS',
            'theory_full_marks.integer' => 'Theory Full Marks must be INTEGER',
            'practical_full_marks.integer' => 'Practical Full Marks must be INTEGER'
        ]);
        $row = $this->model::findOrFail($id);
        $row->title = $request->title;
        $row->theory_full_marks = $request->theory_full_marks;
        $row->practical_full_marks = $request->practical_full_marks;
        $row->credit_hour = $request->credit_hour;
        $row->save();

        if($row->save()){
            session()->flash('alert-success', $this->panel.' Successfully Updated');
        }else {
            session()->flash('alert-danger', $this->panel.' can not be Updated');
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


    public function assignAssSubject() {

    }

    public function getSchoolClassSectionSubjects(Request $request) {
        if($request->ajax()){
            $school_class_sec_id = $request->school_class_sec_id;
            $data = $this->model_g::getSchoolClassSectionSubjects($school_class_sec_id);
            // var_dump($data);
            return $data;
        }

    }
}
