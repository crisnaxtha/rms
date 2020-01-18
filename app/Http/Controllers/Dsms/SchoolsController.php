<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\Eloquent\DM_General;
use App\Model\Dsms\School;;
use App\Model\Dsms\MyClass;
use App\Model\Dsms\Section;
use DB;


class SchoolsController extends DM_BaseController
{
    protected $panel = 'School';
    protected $base_route ='dsms.school';
    protected $view_path = 'dsms.school';

    public function __construct(Request $request, School $model, MyClass $model_2, DM_General $model_g){
        $this->model = $model;
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
        $row = $this->model;
        $row->title = $request->title;
        $row->code = $request->code;
        $row->established = $request->established;
        $row->description = $request->description;
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
        $row = $this->model::findOrFail($id);
        $row->title = $request->title;
        $row->code = $request->code;
        $row->established = $request->established;
        $row->description = $request->description;
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

    public function assignClass($id) {
        $data['row'] = $this->model::findOrFail($id);
        $data['class'] = $this->model_2::all();
        $data['school_class'] = $this->model_g::joinSchoolClass($id);
        $data['class_id'] = [];
        foreach($data['school_class'] as $row){
            array_push($data['class_id'], $row->class_id);
        }
        $data['p_id'] = array_combine($data['class_id'], $data['class_id']);
        return view(parent::loadView($this->view_path.'.section'), compact('data'));
    }

    public function updateAssignSection(Request $request, $id) {
        if(DB::table('class_sections')->where('class_id', $id)->first()){
            DB::table('class_sections')->where('class_id', $id)->delete();
        }
        $sections = $request->sections;
        if(isset($sections)){
            foreach($sections as $row) {
                $data[] = [
                    'section_id' => $row,
                    'class_id' => $id,
                ];
            }
        DB::table('class_sections')->insert($data);
        }

        $data['rows'] = $this->model::all();
        return view(parent::loadView($this->view_path.'.index'), compact('data'));

    }

    public function joinClassSection($id) {
        $class_role = DB::table('class_sections')
                    ->join('sections', 'class_sections.section_id', '=', 'sections.id')
                    ->where('class_sections.class_id', '=', $id)
                    ->select('class_sections.*', 'sections.title')
                    ->get();
        return $class_role;
    }

}
