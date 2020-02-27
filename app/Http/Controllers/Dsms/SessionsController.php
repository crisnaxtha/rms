<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\Eloquent\DM_General;
use App\Model\Dsms\Session;
use DB;

class SessionsController extends DM_BaseController
{
    protected $panel = 'Session';
    protected $base_route ='dsms.session';
    protected $view_path = 'dsms.session';

    public function __construct(Request $request, Session $model, DM_General $model_g){
        $this->middleware('auth');
        // $this->middleware('permission:school-list', ['only' => ['index']]);
        // $this->middleware('permission:school-create', ['only' => ['create','store']]);
        // $this->middleware('permission:school-edit', ['only' => ['edit','update']]);
        // $this->middleware('permission:school-delete', ['only' => ['destroy']]);
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
            'session' => 'required|max:255',
        ],
        [
            'session.required' => 'You must enter the Session name!',
        ]);
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
        $validatedData = $request->validate([
            'title' => 'required|max:255',
        ],
        [
            'title.required' => 'You must enter the SCHOOL name!',
        ]);
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
}
