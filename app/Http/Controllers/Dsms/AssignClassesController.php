<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\MyClass;
use App\Model\Dsms\School;
use App\Model\Dsms\Eloquent\DM_General;
use DB;

class AssignClassesController extends DM_BaseController
{
    protected $panel = 'Assign Class';
    protected $base_route ='dsms.assign_class';
    protected $view_path = 'dsms.assign_class';

    public function __construct(Request $request, School $model, MyClass $model_1, DM_General $model_g){
        $this->model = $model;
        $this->model_1 = $model_1;
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
        $data['class'] = $this->model_1::where('status', '=', 1)->get();
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
        $school_id = $request->school_id;
        $class_id = $request->class_id;
        $row_id = $request->row_id;
        $array_map = array_map(null, $row_id, $class_id);
        // dd($array_map);
        foreach($array_map as $row) {
            if(isset($row[0])){
                DB::table('school_classes')->where('id', '=', $row[0])->update([
                    'school_id' => $school_id,
                    'class_id' => (int)$row[1],
                ]);
            }
            else{
                DB::table('school_classes')->insert([
                    'school_id' => $school_id,
                    'class_id' => (int)$row[1],
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
        DB::table('school_classes')->where('id', '=', $request->id)->delete();
    }

    public function getSchoolClass(Request $request) {
        if($request->ajax()){
            $school_id = $request->school_id;
            $data = $this->model_g::joinSchoolClass($school_id);
           return $data;
        }

    }
}
