<?php

namespace App\Http\Controllers\Dsms;

use App\Model\Dsms\GradeSheetSetting;
use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use DB;

class GradeSheetController extends DM_BaseController
{
    protected $model;
    protected $base_route = 'dsms.setting';
    protected $view_path = 'dsms.setting';
    protected $panel = 'Settings';
    protected $folder = 'setting';
    protected $folder_path;
    protected $image_prefix_path = 'upload_file/images/setting/';

    public function __construct(GradeSheetSetting $model){
        $this->middleware('auth');
        $this->middleware('permission:header-setting', ['only' => ['getGeneralSetting', 'updateGeneralSetting']]);
        $this->model = $model;
        $this->folder_path = getcwd() . DIRECTORY_SEPARATOR . 'upload_file' . DIRECTORY_SEPARATOR .'images'. DIRECTORY_SEPARATOR . $this->folder . DIRECTORY_SEPARATOR;

    }

    public function getGeneralSetting(){
        $row = $this->model::firstOrFail();
        if(!isset($row) || !is_object($row) ) {
            $data = $this->model;
            $data->title_1 = null;
            $data->save();
        }
        return view(parent::loadView($this->view_path.'.index'), compact('row'));
    }

    public function updateGeneralSetting(Request $request, $id){
        $request->validate([
            'name' => 'required|max:225',
            'slogan' => 'max:225',
            'title' => 'required|max:225',
            'description' => 'required',
            'meta' => 'required',
            'logo' => 'image',
        ]);
        $row = $this->model::findOrFail($id);
        $row->site_name = $request->name;
        $row->site_slogan = $request->slogan;
        $row->site_title = $request->title;
        $row->site_description = $request->description;
        $row->meta_keyword = $request->meta;
        if($request->hasFile('logo')){
            $row->logo = parent::uploadFile($this->folder_path, $this->image_prefix_path, 'logo', $request);
        }
        $row->language = $request->language;
        $row->save();
        session()->flash('alert-success', $this->panel.' Successfully added');
        return back();
    }

}
