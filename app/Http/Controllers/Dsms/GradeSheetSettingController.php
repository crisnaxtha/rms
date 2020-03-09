<?php

namespace App\Http\Controllers\Dsms;

use App\Model\Dsms\GradeSheetSetting;
use Illuminate\Http\Request;
use App\Http\Controllers\DM_BaseController;
use DB;

class GradeSheetSettingController extends DM_BaseController
{
    protected $model;
    protected $base_route = 'dsms.setting';
    protected $view_path = 'dsms.setting';
    protected $panel = 'Settings';
    protected $folder = 'setting';
    protected $folder_path;
    protected $image_prefix_path = 'upload_file/images/setting/';

    public function __construct(GradeSheetSetting $model){
        $this->middleware(['auth', 'status']);
        // $this->middleware('permission:header-setting', ['only' => ['getGeneralSetting', 'updateGeneralSetting']]);
        $this->model = $model;
        $this->folder_path = getcwd() . DIRECTORY_SEPARATOR . 'upload_file' . DIRECTORY_SEPARATOR .'images'. DIRECTORY_SEPARATOR . $this->folder . DIRECTORY_SEPARATOR;

    }

    public function getGeneralSetting(){
        $row = $this->model::first();
        if(!isset($row) || !is_object($row) ) {
            $data = $this->model;
            $data->title_1 = null;
            $data->save();
        }
        return view(parent::loadView($this->view_path.'.index'), compact('row'));
    }

    public function updateGeneralSetting(Request $request, $id){
        // $request->validate([
        //     'name' => 'required|max:225',
        //     'slogan' => 'max:225',
        //     'title' => 'required|max:225',
        //     'description' => 'required',
        //     'meta' => 'required',
        //     'logo' => 'image',
        // ]);
        $row = $this->model::findOrFail($id);
        $row->title_1 = $request->title_1;
        $row->title_2 = $request->title_2;
        $row->title_3 = $request->title_3;
        $row->title_4 = $request->title_4;
        $row->title_5 = $request->title_5;
        $row->print_date = get_nepali_data($request->print_date);

        if($request->hasFile('logo_1')){
            $file_path = getcwd().'/'. $row->logo_1;
            if(is_file($file_path)){
                unlink($file_path);
            }
            $row->logo_1 = parent::uploadFile($this->folder_path, $this->image_prefix_path, 'logo_1', $request);
        }
        if($request->hasFile('logo_2')){
            $file_path = getcwd().'/'. $row->logo_2;
            if(is_file($file_path)){
                unlink($file_path);
            }
            $row->logo_2 = parent::uploadFile($this->folder_path, $this->image_prefix_path, 'logo_2', $request);
        }
        $row->save();
        session()->flash('alert-success', $this->panel.' Successfully added');
        return back();
    }

}
