<?php

namespace App\Http\Controllers\Dsms;

use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use App\Model\Dsms\Grade;
use DB;

class GradesController extends DM_BaseController
{
    protected $panel = 'Marks Grade';
    protected $base_route ='dsms.grade';
    protected $view_path = 'dsms.grade';

    public function __construct(Request $request, Grade $model){
        $this->model = $model;
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
            'mark_from' => 'required',
            'mark_upto' => 'required',
            'point' => 'required',
        ],
        [
            'title.required' => 'You must enter the Grade name!',
            'mark_from.required' => 'You must enter the Percent From!',
            'mark_upto.required' => 'You must enter the Percent Upto!',
            'point.required' => 'You must enter the Grade Point!',
        ]);
        $row = $this->model;
        $row->title = $request->title;
        $row->mark_from = $request->mark_from;
        $row->mark_upto = $request->mark_upto;
        $row->point = $request->point;
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
            'mark_from' => 'required',
            'mark_upto' => 'required',
            'point' => 'required',
        ],
        [
            'title.required' => 'You must enter the Grade name!',
            'mark_from.required' => 'You must enter the Percent From!',
            'mark_upto.required' => 'You must enter the Percent Upto!',
            'point.required' => 'You must enter the Grade Point!',
        ]);
        $row = $this->model::findOrFail($id);
        $row->title = $request->title;
        $row->mark_from = $request->mark_from;
        $row->mark_upto = $request->mark_upto;
        $row->point = $request->point;
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
