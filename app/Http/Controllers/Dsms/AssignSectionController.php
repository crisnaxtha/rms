<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Http\Dm_Traits\DM_General as Dm_TraitsDM_General;
use App\Model\Dsms\MyClass;
use App\Model\Dsms\Section;
use App\Model\Dsms\Subject;
// use App\Model\Dsms\ClassSectionSubject;
use App\Model\Dsms\Eloquent\DM_General;
use DB;


class AssignSectionController extends DM_BaseController
{
    use Dm_TraitsDM_General;

    protected $panel = 'Assign Section';
    protected $base_route ='dsms.assign_section';
    protected $view_path = 'dsms.assign_section';

    public function __construct(Request $request, MyClass $model, Section $model_1, Subject $model_2, DM_General $model_g){
        $this->model = $model;
        $this->model_1 = $model_1;
        $this->model_2 = $model_2;
        $this->model_g = $model_g;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['class'] = $this->model::where('status', '=', 1)->get();
        $data['subject'] = $this->model_2::where('status', '=', 1)->get();
        return view($this->loadView($this->view_path.'.index'), compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['class'] = $this->model::where('status', '=', 1)->get();
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
        // dd('hello');
        $class_id = $request->class_id;
        $section_id = $request->section_id;
        $subject_id = $request->subject_id;
        $row_id = $request->row_id;
        $array_map = array_map(null, $row_id, $subject_id);
        // dd($array_map);
        $class_section_id = $this->model_g::getClassSectionId($class_id, $section_id);
        // dd($class_section_id);
        foreach($array_map as $row) {
            if(isset($row[0])){
                DB::table('class_section_subjects')->where('id', '=', $row[0])->update([
                    'class_section_id' => $class_section_id->id,
                    'subject_id' => (int)$row[1],
                ]);
            }
            else{
                DB::table('class_section_subjects')->insert([
                    'class_section_id' => $class_section_id->id,
                    'subject_id' => (int)$row[1],
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
        DB::table('class_section_subjects')->where('id', '=', $request->id)->delete();
    }

    // public function getClassSection(Request $request) {
    //     if($request->ajax()){
    //         $class_id = $request->class_id;
    //         $sections = $this->model_g::getClassSections($class_id);
    //        return $sections;
    //     }

    // }

    public function getClassSectionSubjects(Request $request) {
        if($request->ajax()){
            $class_id = $request->class_id;
            $section_id = $request->section_id;
            $class_section = $this->model_g::getClassSectionId($class_id, $section_id);
            $subjects = $this->model_g::getClassSectionSubjects($class_section->id);
            return $subjects;
        }
    }
}
