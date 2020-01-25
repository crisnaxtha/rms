<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Http\Dm_Traits\DM_General as Dm_TraitsDM_General;
use App\Model\Dsms\MyClass;
use App\Model\Dsms\Section;
use App\Model\Dsms\Subject;
use App\Model\Dsms\School;
use App\Model\Dsms\Eloquent\DM_General;
use DB;


class AssignSectionController extends DM_BaseController
{
    use Dm_TraitsDM_General;

    protected $panel = 'Assign Section';
    protected $base_route ='dsms.assign_section';
    protected $view_path = 'dsms.assign_section';

    public function __construct(Request $request, School $model, Section $model_1, Subject $model_2, MyClass $model_3, DM_General $model_g){
        $this->middleware('auth');
        $this->middleware('permission:assign-section-list', ['only' => ['index']]);
        $this->middleware('permission:assign-section-create', ['only' => ['create','store']]);
        // $this->middleware('permission:affiliated-edit', ['only' => ['edit','update']]);
        $this->middleware('permission:assign-section-delete', ['only' => ['destroy']]);
        $this->model = $model;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
        $this->model_3 = $model_3;
        $this->model_g = $model_g;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['school'] = $this->model::all();
        $data['section'] = $this->model_1::where('status', '=', 1)->get();
        return view($this->loadView($this->view_path.'.index'), compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['school'] = $this->model::all();
        $data['section'] = $this->model_1::where('status', '=', 1)->get();
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
        $row_id = $request->row_id;
        $array_map = array_map(null, $row_id, $section_id);
        // dd($array_map);
        $school_class = $this->model_g::getSchoolClassId($school_id, $class_id);
        // dd($class_section_id);
        foreach($array_map as $row) {
            if(isset($row[0])){
                DB::table('school_class_sections')->where('id', '=', $row[0])->update([
                    'school_class_id' => $school_class->id,
                    'section_id' => (int)$row[1],
                ]);
            }
            else{
                DB::table('school_class_sections')->insert([
                    'school_class_id' => $school_class->id,
                    'section_id' => (int)$row[1],
                ]);
            }
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
    public function destroy(Request $request)
    {
        DB::table('school_class_sections')->where('id', '=', $request->id)->delete();
    }

    public function getSchoolClass(Request $request) {
        if($request->ajax()){
            $school_id = $request->school_id;
            $data = $this->model_g::joinSchoolClass($school_id);
           return $data;
        }

    }

    public function getSchoolClassSection(Request $request) {
        if($request->ajax()){
            $school_id = $request->school_id;
            $class_id = $request->class_id;
            $school_class = $this->model_g::getSchoolClassId($school_id, $class_id);
            $data = $this->model_g::getSchoolClassSections($school_class->id);
            return $data;
        }
    }
}
